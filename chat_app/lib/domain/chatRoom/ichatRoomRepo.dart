import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/chatRoom/models/message/message.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:dartz/dartz.dart';

abstract class IchatRoomRepo {
  Future<Either<Failure, String>> createGroup(
      {required String groupName,
      List<String> members,
      required String myId,
      String message,
      required String memberId});

  Stream<List<Message>> readMessage(
      {required String groupId});
  Future<Either<Failure, GroupModel>> getGroupInfo(
      {required String groupId});


    

  Future<Either<Failure, String>> createPublicGroup(
      {required String groupName,
       required List<String> members,
      required String myId,
    
    });
    Future<Either<Failure,List<UserModel>>>getUserList(
      {required String groupId}
    );

      Future<Either<Failure, String>> sendPublicGroupMessage(
      {required String groupId,
      
      required String myId,
     required String message,
      });
}
