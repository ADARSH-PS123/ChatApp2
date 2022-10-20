import 'dart:io';

import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/iMainRepo.dart';

import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      if (name.isNotEmpty) {
        final fire = await FirebaseFirestore.instance
            .collection("users")
            .where("name", isGreaterThanOrEqualTo: name)
            .where("name", isLessThanOrEqualTo: name + 'z')
            .get();

        fire.docs.forEach((e) {
          lUser.add(UserModel.fromJson(e.data()));
        });
        return Right(lUser);
      } else {
        return Right(lUser);
      }
    } catch (e) {
      return const Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, List<GroupModel>>> showChatLists(
      {required String myId}) async {
    try {
      final firebse = await FirebaseFirestore.instance
          .collection('groups').where('private',isEqualTo: true)
          .where('members', arrayContains: myId)
          .get();
     
 List<GroupModel>lGroupModel= firebse.docs.map((docSnap) {
        return
        GroupModel.fromJson(docSnap.data() );
      }).toList();

      return Right(lGroupModel);
    } catch (e) {
      print(e.toString());
      return const Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, UserModel>> userProfile(
      {required String destination, required bool isDeletion}) async {
    //destination is the user id
    try {
      FirebaseFirestore _firebase = FirebaseFirestore.instance;
      FirebaseStorage _storage = FirebaseStorage.instance;
      if (isDeletion) {
        
            await _storage.ref().child('profile').child(destination.trim()).delete();
      await  _firebase
            .collection('users')
            .doc(destination.trim())
            .update({'profile_photo': ''});
        final docCredential = await FirebaseFirestore.instance
            .collection('users')
            .doc(destination.trim())
            .get();

        if (docCredential.data() != null) {
          return Right(
              UserModel.fromJson(docCredential.data() as Map<String, dynamic>));
        } else {
          return const Left(Failure.FirebaseFirestore());
        }
      } else {
        final image =
            await ImagePicker.platform.pickImage(source: ImageSource.gallery);
        if (image != null) {
      var ref=    _storage.ref().child('profile').child(destination.trim());
      await ref.putFile(File(image.path));
  
          

          final imageUrl = await ref.getDownloadURL();
          print(imageUrl + "*****^^^^^^^^^^^^^^^^^^^^^^^");
          _firebase
              .collection('users')
              .doc(destination.trim())
              .update({'profile_photo': imageUrl});
          final docCredential = await FirebaseFirestore.instance
              .collection('users')
              .doc(destination.trim())
              .get();

          if (docCredential.data() != null) {
            return Right(UserModel.fromJson(
                docCredential.data() as Map<String, dynamic>));
          } else {
            return const Left(Failure.FirebaseFirestore());
          }
        } else {
          return const Left(Failure.FirebaseFirestore());
        }
      }
    } catch (e) {
      print(e.toString() + "catch bloc storage");
      return const Left(Failure.FirebaseFirestore());
    }
  }

  @override
  Future<Either<Failure, UserModel>> editUserName(
      {required String userId, required String userName}) async {
    try {
      final _firebase = FirebaseFirestore.instance;
      await _firebase
          .collection('users')
          .doc(userId.trim())
          .update({'name': userName});
      final docSnap =
          await _firebase.collection('users').doc(userId.trim()).get();
  
      return Right(UserModel.fromJson(docSnap.data() as Map<String, dynamic>));
    } catch (e) {
      print(e.toString() + "edit user catch bloc_________________");
      return Left(Failure.FirebaseFirestore());
    }
  }
  
  @override
  Future<Either<Failure, List<UserModel>>> showUserList({required String myId})async {
 try {
      final firebse = await FirebaseFirestore.instance
          .collection('groups').where('private',isEqualTo: true).where('members',arrayContains: myId).get();
    
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
     
print(user);
      
 
      return Right(user);
    } catch (e) {
      print(e.toString());
      return const Left(Failure.FirebaseFirestore());
    }
  }
  
  @override
  Future<Either<Failure, List<GroupModel>>> showPublicChatLists({required String myId}) async{
      try {
      final firebse = await FirebaseFirestore.instance
          .collection('groups').where('private',isEqualTo: false)
          .where('members', arrayContains: myId)
          .get();
     
 List<GroupModel>lGroupModel= firebse.docs.map((docSnap) {
        return
        GroupModel.fromJson(docSnap.data() );
      }).toList();

      return Right(lGroupModel);
    } catch (e) {
      print(e.toString());
      return const Left(Failure.FirebaseFirestore());
    }
  }
  
  @override
  Future<Either<Failure, String>> signOut()async {
   try{
await FirebaseAuth.instance.signOut();
final pref=await SharedPreferences.getInstance();
 await pref.remove('userId');
await pref.remove('isSaved');
return Right('success');
   }
   catch(e){
    return Left(Failure.clinetFailure());
   }
  }
  

}
