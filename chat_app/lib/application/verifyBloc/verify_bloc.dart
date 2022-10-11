import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/core/verifyPage/Iverify.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'verify_event.dart';
part 'verify_state.dart';
part 'verify_bloc.freezed.dart';

@injectable
class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  final Iverify verify;
  VerifyBloc(this.verify) : super(VerifyState.initial()) {
    on<_EventSendEmail>((event, emit) async {
      Either<Failure, String> result = await verify.sendEmailVerification();

      final outPut = result.fold((failure) {
        return state.copyWith(
          optionSuccessFailure: Some(Left(failure)),
        );
      }, (message) {
        return state.copyWith(
          optionSuccessFailure: Some(Right(message)),
        );
      });

      emit(outPut);
    });

    on<_EventReloadEmail>((event, emit) async {
      Either<Failure, bool> result = await verify.reload();
      final output = result.fold((failure) {
        return state.copyWith(optionSuccessFailure: Some(Left(failure)));
      }, (status) {
        if (status == true) {
          verify.setUserInfo(profilePhoto: '', groups: []);
          return state.copyWith(
              isVerified: true,
              optionSuccessFailure:
                  const Some(Right("email has been verified please log in")));
        } else {
          return state.copyWith();
        }
      });
      emit(output);
    });

    on<_EventDeleteEmail>(
      (event, emit) async {
        Either<Failure, String> result = await verify.deleteUnverifiedEmail();
        final output = result.fold((l) {
          return state.copyWith(optionSuccessFailure: Some(Left(l)));
        }, (r) {
          return state.copyWith(
              isVerified: false, optionSuccessFailure: Some(Right(r)));
        });
        emit(output);
      },
    );
  }
}
