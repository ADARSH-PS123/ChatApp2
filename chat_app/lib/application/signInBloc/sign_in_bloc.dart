import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/logInpage/Iauth.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final Iauth auth;
  SignInBloc(this.auth) : super(SignInState.initial()) {
    on<_EventLogIn>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      Either<Failure, String> result = await auth.authLogInWithEmailPass(
          email: event.email, password: event.password);
      final output = result.fold((Failure failure) {
        return state.copyWith(
          optionSucessOrFailure: Some(Left(failure)),
          isLoading: false,
        );
      }, (String uids) {
        auth.saveId(id: uids);
        
        return state.copyWith(
          optionSucessOrFailure: Some(right(uids)),
          isLoading: false,
        );
      });
      emit(output);
    });
    on<_EventPrefGetUser>((event, emit) async{
      final status=await auth.getStatus();
      final userId=await auth.getId();
      print('++++++++++++++++++++++++++'+userId.toString());
      final out=state.copyWith(isLoggedIn: status??false,uid: userId??"nullValue");
      emit(out);
      
    });
  }
}
