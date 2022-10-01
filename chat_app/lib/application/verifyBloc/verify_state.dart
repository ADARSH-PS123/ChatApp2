part of 'verify_bloc.dart';

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState({
    required bool isVerified,
    required Option<Either<Failure,String>>optionSuccessFailure,
  })=_VerifyState;
   factory VerifyState.initial(){
    return  VerifyState(isVerified: false, optionSuccessFailure: none());
   }
}
