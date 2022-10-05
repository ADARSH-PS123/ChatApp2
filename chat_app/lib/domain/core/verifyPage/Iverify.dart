import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Iverify {
  Future<Either<Failure, String>> sendEmailVerification();
  Future<Either<Failure, bool>> reload();

  Future<Either<Failure, String>> deleteUnverifiedEmail();
   Future<Either<Failure, String>> setUserInfo(
      {
      required String profilePhoto,
      required List<String> groups});
}
