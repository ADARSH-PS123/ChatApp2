import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/iMainRepo.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IMainRepo)
class MainRepo implements IMainRepo {
  @override
  Future<Either<Failure, UserModel>> getUserInfo({required String uid}) async {
    try {
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
  Future<Either<Failure, List<UserModel>>> searchUser({required String name})async {
    try{ final fire = await FirebaseFirestore.instance
          .collection("users")
          .where("name", isGreaterThanOrEqualTo: name)
          .where("name", isLessThanOrEqualTo: name+'z')
          .get();
      List<UserModel>lUser=[];
      fire.docs.forEach((e) {
      
       lUser.add(UserModel.fromJson(e.data())) ;
       print(e.data().toString()+"8888888888888888888888888888888888888888");
        lUser.forEach((element) { 
          print(element.name.toString()+")))))))))))))))))))))))))))))))())))))))))))))))");
        });
        
        }
        
         );
         return Right(lUser);
         }
    catch(e){
      return Left(
        Failure.FirebaseFirestore()
      );
    }
  
  }


}
