import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/chatRoom/ichatRoomRepo.dart';
import 'package:chat_app/domain/chatRoom/models/group_model/group_model.dart';
import 'package:chat_app/domain/chatRoom/models/message/message.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_room_event.dart';
part 'chat_room_state.dart';
part 'chat_room_bloc.freezed.dart';

@injectable
class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
  final IchatRoomRepo chatRoomRepo;
  ChatRoomBloc(this.chatRoomRepo) : super(ChatRoomState.initial()) {
    on<_EventCreateGroup>((event, emit) async {
      final result = await chatRoomRepo.createGroup(
          groupName: event.groupName,
          message: event.message,
          myId: event.myId,
          memberId: event.memberId);
      final out = result.fold((l) {
        return state.copyWith(optionSuccessOrFailure: Some(Left(l)));
      }, (success) {
        return state.copyWith(isLoading: false);
      });
      emit(out);
    });
    on<_EventReadMessage>((event, emit) async {
        emit(state.copyWith(isLoading: true));
      final result = await chatRoomRepo.readMessage(
          groupId: event.groupId,);

      await emit.forEach(
        result,
        onData: (data) => state.copyWith(lMessage: data as List<Message>,isLoading: false),
      );
    });
    on<_EventGetUserInfo>((event, emit) async {
        emit(state.copyWith(isLoading: true));
      final result = await chatRoomRepo.getGroupInfo(
          groupId: event.groupId, );
      final out = result
          .fold((l) => state.copyWith(optionSuccessOrFailure: Some(Left(l)),isLoading: false),
              (groupModel) {
        return state.copyWith(
            groupInfo: groupModel,
            optionSuccessOrFailure: const Some(Right('success')),isLoading: false);
      });
      emit(out);
    });

    on<_EventCreatePublicGroup>((event, emit) async {
      final result = await chatRoomRepo.createPublicGroup(
          groupName: event.groupName,
          members: event.memberIds,
          myId: event.myId);
          final out=result.fold((l) {
            return state.copyWith(optionSuccessOrFailure: Some(Left(l)));
          }, (groupId) {
            return state.copyWith(optionSuccessOrFailure: Some(Right(groupId)));
          });
          emit(out);
    });

  on<_EventGetUserList>((event, emit)async {
    emit(state.copyWith(isLoading: true));
    final result=await chatRoomRepo.getUserList(groupId: event.groupId);
    final out=result.fold((l) {
      return state.copyWith(optionSuccessOrFailure: Some(Left(l)),isLoading: false);
    }, (List<UserModel>lUserModel) {
      return state.copyWith(lUserModel:lUserModel,optionSuccessOrFailure: Some(Right('success'),),isLoading: false);

    });
    emit(out);
  });
  on<_EventSendPublicGroupMessage>((event, emit) async {
      final result = await chatRoomRepo.sendPublicGroupMessage(
          
          message: event.message,
          myId: event.myId, groupId: event.groupId,
       );
      final out = result.fold((l) {
        return state.copyWith(optionSuccessOrFailure: Some(Left(l)));
      }, (success) {
        return state.copyWith(isLoading: false);
      });
      emit(out);
    });

  
  }
}
