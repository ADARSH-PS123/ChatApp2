import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
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
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await mainRepo.searchUser(name: event.name);
      final out = result.fold(
          (l) => state.copyWith(
              isLoading: false,
              optionUserSucessOrFailure:
                  const Some(Left(Failure.FirebaseFirestore()))), (userList) {
        userList.forEach((element) {});

        return state.copyWith(
          lUserModel: userList,
          isLoading: false,
        );
      });
      emit(out);
    });
    on<_EventShowChatLists>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await mainRepo.showChatLists(myId: event.uid);
      final out = result.fold((l) {
        return state.copyWith(
          optionUserSucessOrFailure: Some(Left(l)),
        );
      }, (groupModel) {
        return state.copyWith(
          lGroupModel: groupModel,
        );
      });
      emit(out);
    });

    on<_EventUserProfile>((event, emit) async {
      final result = await mainRepo.userProfile(
          destination: event.destination, isDeletion: event.isDeletion);
      final out = result.fold(
          (l) => state.copyWith(optionUserSucessOrFailure: Some(Left(l))),
          (user) => state.copyWith(userModel: user));
      emit(out);
    });
    on<_EventEditUserName>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await mainRepo.editUserName(
          userId: event.userId, userName: event.userName);
      final out = result.fold((l) {
        return state.copyWith(
            optionUserSucessOrFailure: Some(
              Left(l),
            ),
            isLoading: false);
      }, (userModel) {
        return state.copyWith(userModel: userModel, isLoading: false);
      });
      emit(out);
    });

    on<_EventShowUserLists>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await mainRepo.showUserList(myId: event.uid);
      final out = result.fold((l) {
        return state.copyWith(
            optionUserSucessOrFailure: Some(Left(l)), isLoading: false);
      }, (lUserModel) {
        return state.copyWith(lUserModel: lUserModel, isLoading: false);
      });
      emit(out);
    });

    on<_EventShowPublicChatLists>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await mainRepo.showPublicChatLists(myId: event.uid);
      final out = result.fold((l) {
        return state.copyWith(
          optionUserSucessOrFailure: Some(Left(l)),
        );
      }, (groupModel) {
        return state.copyWith(
          groupModelList: groupModel,
        );
      });
      emit(out);
    });
    on<_EventSignOut>((event, emit) async {
      final result = await mainRepo.signOut();
      final out = result.fold(
          (l) => state.copyWith(optionUserSucessOrFailure: Some(Left(l))),
          (r) => state.copyWith(isSignedOut: true));
          emit(out);
    });
  }
}
