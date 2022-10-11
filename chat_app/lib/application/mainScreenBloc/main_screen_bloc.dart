import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/iMainRepo.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

@injectable
class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final IMainRepo mainRepo;
  MainScreenBloc(this.mainRepo) : super(MainScreenState.initial()) {
    on<_EventGetUserInfo>((event, emit) async {
      final result = await mainRepo.getUserInfo(uid: event.uid);
      final out = result.fold((failure) {
        return state.copyWith(optionUserSucessOrFailure: Some(Left(failure)));
      }, (userInfo) {
        return state.copyWith(
            optionUserSucessOrFailure: Some(
              Right(userInfo),
            ),
            userModel: userInfo);
      });
      emit(out);
    });
    on<_EventSearchUser>((event, emit) async {
      emit(state.copyWith(isLoading: true,isSearching: true));
      final result = await mainRepo.searchUser(name: event.name);
      final out = result.fold(
          (l) => state.copyWith(
              isLoading: false,
              optionUserSucessOrFailure:
                  const Some(Left(Failure.FirebaseFirestore()))), (userList) {
        userList.forEach((element) {
          print(element.name.toString() + "-------------------");
        });

        return state.copyWith(lUserModel: userList, isLoading: false,isSearching: event.name.isNotEmpty?true:false);
      });
      emit(out);
    });
    on<_EventShowChatLists>((event, emit)async {
final result=await mainRepo.showChatLists(myId: event.uid);
final out= result.fold((l){
  return state.copyWith(optionUserSucessOrFailure: Some(Left(l)));
},(r){
  
  return state.copyWith(lUserModel: r);
});
emit(out);
    });

  
  }
}
