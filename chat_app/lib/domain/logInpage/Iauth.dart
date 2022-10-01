

import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
abstract class Iauth{
  Future <Either<Failure,String>>authLogInWithEmailPass({required String email,required String password});
  Future <Either<Failure,String>>authRegWithEmailPass({required String email,required String password});




}