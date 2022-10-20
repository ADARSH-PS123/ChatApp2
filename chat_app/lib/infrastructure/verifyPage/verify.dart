import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/core/verifyPage/Iverify.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Iverify)
class Verify implements Iverify {
  @override
  Future<Either<Failure, bool>> reload() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      await user!.reload();
      print("reload called");
      user = FirebaseAuth.instance.currentUser;
      if (user!.emailVerified) {
        print("email verified");
        return const Right(true);
      } else {
        return const Right(false);
      }
    } catch (e) {
      print(e.toString() + "  reload catch");
      return Left(Failure.clinetFailure());
    }
  }

  @override
  Future<Either<Failure, String>> sendEmailVerification() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      await user!.sendEmailVerification();
      return Right("sending verification email");
    } catch (e) {
      print(e.toString() + "catch block ==================================");
      return const Left(Failure.clinetFailure());
    }
  }

  @override
  Future<Either<Failure, String>> deleteUnverifiedEmail() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (!user!.emailVerified) {
        user.delete();
      }
      return const Right("Verification cancelled");
    } catch (e) {
      print(e.toString() + "del *************************************");
      return const Left(Failure.clinetFailure());
    }
  }

  @override
  Future<Either<Failure, String>> setUserInfo(
      {required String profilePhoto, required List<String> groups}) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    final name = currentUser!.email.toString().split("@");
    final user = UserModel(
        name: name[0],
        profilePhoto: profilePhoto,
        groups: groups,
        userId: currentUser.uid,
        isOnline: false);
    try {
      final firebseinstace = await FirebaseFirestore.instance;
      firebseinstace
          .collection("users")
          .doc(currentUser.uid)
          .set(user.toJson());
      print(user.toJson());
      return Right("success");
    } on FirebaseException catch (e) {
      print(e.code.toString());
      return Left(Failure.FirebaseFirestore());
    } catch (e) {
      return Left(Failure.clinetFailure());
    }
  }
}
