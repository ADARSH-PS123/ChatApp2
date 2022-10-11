import 'dart:io';

import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/iMainRepo.dart';

import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IMainRepo)
class MainRepos implements IMainRepo {
  @override
  Future<Either<Failure, UserModel>> getUserInfo({required String uid}) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .update({'is_online': true});
      final docCredential =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();

      if (docCredential.data() != null) {
        return Right(
            UserModel.fromJson(docCredential.data() as Map<String, dynamic>));
      } else {
        return const Left(Failure.FirebaseFirestore());
      }
    } catch (e) {
      return const Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, List<UserModel>>> searchUser(
      {required String name}) async {
    try {
       List<UserModel> lUser = [];
      if(name.isNotEmpty){ 
        final fire = await FirebaseFirestore.instance
          .collection("users")
          .where("name", isGreaterThanOrEqualTo: name)
          .where("name", isLessThanOrEqualTo: name + 'z')
          .get();
           
      fire.docs.forEach((e) {
        lUser.add(UserModel.fromJson(e.data()));
      });
      return Right(lUser);
          }
     
    else{
      return
      Right(lUser);
    }
      
    } catch (e) {
      return const Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, List<UserModel>>> showChatLists(
      {required String myId}) async {
    try {
      final firebse = await FirebaseFirestore.instance
          .collection('groups')
          .where('members', arrayContains: myId)
          .get();
      List ls = [];
      firebse.docs.forEach((docs) {
        ls.addAll(docs.data()['members']);
      });
      List<UserModel> user = [];
      final set = ls.toSet();
      set.remove(myId);
      for (var element in set) {
        final result = await FirebaseFirestore.instance
            .collection('users')
            .doc(element.toString().trim())
            .get();
      
        user.add(UserModel.fromJson(result.data() as Map<String, dynamic>));
      }

      return Right(user);
    } catch (e) {
      print(e.toString());
      return const Left(Failure.FirebaseFirestore());
    }
  }
}
