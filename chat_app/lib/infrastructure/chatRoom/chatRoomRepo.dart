import 'package:chat_app/domain/chatRoom/ichatRoomRepo.dart';
import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/chatRoom/models/message/message.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/core/functions.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IchatRoomRepo)
class ChatRoomRepo implements IchatRoomRepo {
  @override
  Future<Either<Failure, String>> createGroup(
      {required String groupName,
      required String myId,
      String? message,
      String? memberId,
      List<String>? members}) async {
    {
      try {
        final _firestore = FirebaseFirestore.instance;
        //private group, one to one chat
        final res = await _firestore
            .collection('groups')
            .doc(HelperFunctions.idCreator(myId, memberId!))
            .get();
        await _firestore
            .collection('messages')
            .doc(HelperFunctions.idCreator(myId, memberId))
            .collection('msg')
            .doc()
            .set(Message(
                isDeleted: false,
                message: message,
                timeStamp: DateTime.now().toString(),
                sendBy: myId,
                seenBy: []).toJson());
        if (res.exists) {
          await FirebaseFirestore.instance
              .collection('groups')
              .doc(HelperFunctions.idCreator(myId, memberId))
              .update({'recent_msg': message});
          print('if block');
        } else {
          final firebse = await _firestore
              .collection('groups')
              .doc(HelperFunctions.idCreator(myId, memberId));

          final groupId = firebse.id;

          final gModel = GroupModel(
            groupName: groupName,
            recentMsg: message,
            groupId: groupId,
            private: true,
            members: [myId, memberId.toString().trim()],
          );

          firebse.set(gModel.toJson(), SetOptions(merge: true));
          //adding group ids to the users collection ie ,groups:[gid]

          final firebase =
              await _firestore.collection('users').doc(myId).update({
            'groups':
                FieldValue.arrayUnion([groupId]) //updating user info to my db
          });
          await _firestore
              .collection('users')
              .doc(memberId.toString().trim())
              .update({
            'groups':
                FieldValue.arrayUnion([groupId]) //updating user info to my db
          });
        }

//else

        return Right("succes");
      } catch (e) {
        print(e.toString() + "=======create group catch ____________________");
        return Left(Failure.FirebaseFirestore());
      }
    }
  }

  @override
  Stream<List<Message>> readMessage({required String groupId}) async* {
    final _firebase = FirebaseFirestore.instance;

    final res = _firebase
        .collection('messages')
        .doc(groupId.trim())
        .collection('msg')
        .orderBy('time_stamp', descending: false)
        .snapshots();

    final out = res.map((element) {
      final data = element.docs.map((element) {
        return Message.fromJson(element.data());
      }).toList();

      return data;
    });

    yield* out;
  }

  @override
  Future<Either<Failure, GroupModel>> getGroupInfo(
      {required String groupId}) async {
    try {
      final _firebase = FirebaseFirestore.instance;
      DocumentSnapshot docSnap =
          await _firebase.collection('groups').doc(groupId.trim()).get();
      return Right(GroupModel.fromJson(docSnap.data() as Map<String, dynamic>));
    } catch (e) {
      print(e.toString() + "catch at chatroom ");
      return Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, String>> createPublicGroup({
    required String groupName,
    required List<String> members,
    required String myId,
  }) async {
    try {
      final _firebase = FirebaseFirestore.instance;
      final docRef = _firebase.collection('groups').doc();
      final docId = docRef.id.trim();
      List<String> memberIds = members + [myId];
      await docRef.set(GroupModel(
        members: memberIds,
        groupName: groupName,
        groupId: docId,
        private: false,
        createdAt: DateTime.now().toString(),
        createdBy: myId,
      ).toJson());
      //updating groupsList inside the user collection of each member
      memberIds.forEach((ids) async {
        await _firebase.collection('users').doc(ids.trim()).update({
          'groups': FieldValue.arrayUnion([docId])
        });
      });

      return Right(docId.trim());
    } catch (e) {
      print('catch block,public ,${e.toString()}');
      return Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, List<UserModel>>> getUserList(
      {required String groupId}) async {
    try {
      
      final _firebase = FirebaseFirestore.instance;
      final lUsers = await _firebase
          .collection('groups')
          .doc(groupId.trim())
          .get()
          .then((value) => value.data()!['members']);

      List<UserModel> lUserModel = [];
      for (int i = 0; i < lUsers.length; i++) {
        final data = await _firebase
            .collection('users')
            .doc(lUsers[i].toString().trim())
            .get();

        lUserModel.add(UserModel.fromJson(data.data() as Map<String, dynamic>));
      }

      return Right(lUserModel);
    } catch (e) {
      print(e.toString() + "catch bloc at getUserlist ++++");
      return Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, String>> sendPublicGroupMessage(
      {required String groupId,
      required String myId,
      required String message})async {
             try {
        final _firestore = FirebaseFirestore.instance;
        //public group, one to one chat
    
        await _firestore
            .collection('messages')
            .doc(groupId.trim())
            .collection('msg')
            .doc()
            .set(Message(
                isDeleted: false,
                message: message,
                timeStamp: DateTime.now().toString(),
                sendBy: myId,
                seenBy: []).toJson());
       
          await FirebaseFirestore.instance
              .collection('groups')
              .doc(groupId.trim())
              .update({'recent_msg': message});
       

//else

        return Right("succes");
      } catch (e) {
        print(e.toString() + "=======create group catch ____________________");
        return Left(Failure.FirebaseFirestore());
      }
      }
}
