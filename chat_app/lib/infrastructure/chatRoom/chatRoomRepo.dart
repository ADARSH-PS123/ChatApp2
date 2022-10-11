import 'package:chat_app/domain/chatRoom/ichatRoomRepo.dart';
import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IchatRoomRepo)
class ChatRoomRepo implements IchatRoomRepo {
  @override
  Future<Either<Failure, String>> createGroup(
      {required String groupName,
      required String myId,
      required String memberId}) async {
        String idCreator(String id1,String id2){
          List<String>ls=[id1.trim(),id2.trim()];
          ls.sort();
          return ls[0]+ls[1];
        }
    try {
  
  final res=await FirebaseFirestore.instance.collection('groups').doc(idCreator(myId, memberId)).get();

if(res.exists){
  print("existsss");
}
print('if block');
//else
      final firebse =
          await FirebaseFirestore.instance.collection('groups').
          doc(idCreator(myId, memberId));

      final groupId = firebse.id;
      print(groupId);
      final gModel = GroupModel(
        groupName: groupName,groupId: groupId,private: true,
        members: [myId, memberId.toString().trim()],
      );
      
      firebse.set(gModel.toJson(),SetOptions(merge: true));
      //adding group ids to the users collection ie ,groups:[gid]

      final firebase = await FirebaseFirestore.instance
          .collection('users')
          .doc(myId)
          .update({
        'groups': FieldValue.arrayUnion([groupId])//updating user info to my db
      });
      await FirebaseFirestore.instance
          .collection('users')
          .doc(memberId.toString().trim())
          .update({
        'groups': FieldValue.arrayUnion([groupId])//updating user info to my db
      });

      return Right("succes");
     

      
    } 
    
    
    catch (e) {
      print(e.toString() + "=======create group catch ____________________");
      return Left(Failure.FirebaseFirestore());
    }
  }
}
