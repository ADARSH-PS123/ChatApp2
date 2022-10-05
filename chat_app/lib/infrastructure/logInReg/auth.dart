import 'dart:async';

import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/logInpage/Iauth.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: Iauth)
class Auth implements Iauth {
  @override
  //logIn
  Future<Either<Failure, String>> authLogInWithEmailPass(
      {required String email, required String password}) async {
    try {
      final result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      User? user = FirebaseAuth.instance.currentUser;
      if (!user!.emailVerified) {
        user.delete();
      }

      await user.reload();
      user = FirebaseAuth.instance.currentUser;
      return Right(user!.uid.toString());
    } on FirebaseAuthException catch (e) {
      print(e.code.toString() + "*************************************");
      if (e.code == 'invalid-email') {
        return const Left(Failure.AuthFailureInvalidEmail());
      } else if (e.code == 'wrong-password') {
        return const Left(Failure.AuthFailureWrongPassword());
      } else if (e.code == 'user-disabled') {
        return const Left(Failure.AuthFailureUserDisabled());
      } else if (e.code == 'user-not-found') {
        return const Left(Failure.AuthFailureUserNotfound());
      } else if (e.code == 'too-many-requests') {
        return const Left(Failure.AuthFailureTooMantRequests());
      } else {
        return const Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString() +
          "---------------------catch block-=============================");

      return const Left(Failure.clinetFailure());
    }
  }

//Register
  @override
  Future<Either<Failure, String>> authRegWithEmailPass(
      {required String email, required String password}) async {
    try {
      final result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      return Right(result.user!.uid);
    } on FirebaseAuthException catch (e) {
      print(e.code.toString() + "  reg *************************************");

      if (e.code == 'invalid-email') {
        return const Left(Failure.AuthFailureInvalidEmail());
      } else if (e.code == 'weak-password') {
        return const Left(Failure.AuthFailureWeakPassword());
      } else if (e.code == 'operation-not-allowed') {
        return const Left(Failure.AuthFailureAnonimousAccountDisabled());
      } else if (e.code == 'email-already-in-use') {
        return const Left(Failure.AuthFailureEmailAlreadyInUse());
      } else {
        return const Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString() +
          "---------------------catch block-=============================");

      return const Left(Failure.clinetFailure());
    }
  }

  @override
  Future<void> saveId({required String id}) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('userId', id);
    await pref.setBool('isSaved', true);
  }

  @override
  Future<String?> getId() async {
    final pref = await SharedPreferences.getInstance();
    String? id = await pref.getString('userId');
    return id;
  }

  @override
  Future<bool?> getStatus() async {
    final pref = await SharedPreferences.getInstance();
    bool? id = await pref.getBool('isSaved');
    return id;
  }
}
