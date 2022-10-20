import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:dartz/dartz.dart';

abstract class IMainRepo {
  Future<Either<Failure, UserModel>> getUserInfo({required String uid});
  Future<Either<Failure, List<UserModel>>> searchUser({required String name});
  Future<Either<Failure, List<GroupModel>>> showChatLists(
      {required String myId});
  Future<Either<Failure, UserModel>> userProfile(
      {required String destination, required bool isDeletion});
  Future<Either<Failure, UserModel>> editUserName(
      {required String userId, required String userName});
  Future<Either<Failure, List<UserModel>>> showUserList({required String myId});
   Future<Either<Failure, List<GroupModel>>> showPublicChatLists(
      {required String myId});
        Future<Either<Failure, String>> signOut();
 
}
