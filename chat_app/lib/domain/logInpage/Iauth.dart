import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Iauth {
  Future<Either<Failure, String>> authLogInWithEmailPass(
      {required String email, required String password});
  Future<Either<Failure, String>> authRegWithEmailPass(
      {required String email, required String password});
  Future<void> saveId({required String id});
  Future<String?> getId(); //fetch the id
  Future<bool?> getStatus(); //fetch the bool status

}
