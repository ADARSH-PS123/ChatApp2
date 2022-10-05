import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/logInpage/Iauth.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final Iauth auth;
  RegisterBloc(this.auth) : super(RegisterState.initial()) {
    on<_EventRegister>((event, emit) async {
      emit(state.copyWith(isLoading: true, isVerifying: false));
      Either<Failure, String> result = await auth.authRegWithEmailPass(
          email: event.email, password: event.password);
      final output = result.fold((Failure failure) {
        return state.copyWith(
            optionSucessOrFailure: Some(Left(failure)),
            isLoading: false,
            isVerifying: false);
      }, (String uids) {
        return state.copyWith(
          optionSucessOrFailure: Some(Right(uids)),
          isLoading: false,
          isVerifying: true,
        );
      });
      emit(output);
    });
  }
}
