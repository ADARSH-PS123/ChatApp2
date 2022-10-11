import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';

abstract class IchatRoomRepo{
   Future<Either<Failure, String>> createGroup(
      {required String groupName,
      required String myId,
      required String memberId});
}
