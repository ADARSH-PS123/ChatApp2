part of 'verify_bloc.dart';

@freezed
class VerifyEvent with _$VerifyEvent {
  const factory VerifyEvent.sendEmail()=_EventSendEmail;
  const factory VerifyEvent.reload()=_EventReloadEmail;
   const factory VerifyEvent.deleteUnverifiedEmail()=_EventDeleteEmail;
}