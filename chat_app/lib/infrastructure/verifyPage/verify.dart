import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/core/verifyPage/Iverify.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
@LazySingleton(as: Iverify)
class Verify implements Iverify {
  @override
  Future<Either<Failure, bool>> reload() async{
    try{
      User? user = FirebaseAuth.instance.currentUser;
      await user!.reload();
      print("reload called");
      user=FirebaseAuth.instance.currentUser;
if(user!.emailVerified){
  print("email verified");
  return const Right(true);
}
else{
  return const Right(false);
}
    }
    catch(e){
      print(e.toString()+"  reload catch");
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
  Future<Either<Failure, String>> deleteUnverifiedEmail()async {
   try{
 User? user= FirebaseAuth.instance.currentUser;
 if(!user!.emailVerified){
  user.delete();
 }
return    const Right("Verification cancelled" ) ;
   }
   catch(e){
          print(e.toString() + "del *************************************");
    return const Left(Failure.clinetFailure());
   }
   
  }
}
