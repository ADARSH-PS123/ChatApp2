import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:dartz/dartz.dart';

abstract class IMainRepo{
  Future<Either<Failure,UserModel>>getUserInfo({required String uid});
   Future<Either<Failure,List<UserModel>>>searchUser({required String name});

}