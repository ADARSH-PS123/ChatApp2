// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/chatRoomBloc/chat_room_bloc.dart' as _i15;
import '../../../application/mainScreenBloc/main_screen_bloc.dart' as _i11;
import '../../../application/RegBloc/register_bloc.dart' as _i12;
import '../../../application/signInBloc/sign_in_bloc.dart' as _i13;
import '../../../application/verifyBloc/verify_bloc.dart' as _i14;
import '../../../infrastructure/chatRoom/chatRoomRepo.dart' as _i8;
import '../../../infrastructure/logInReg/auth.dart' as _i6;
import '../../../infrastructure/mainPage/mainRepo.dart' as _i4;
import '../../../infrastructure/verifyPage/verify.dart' as _i10;
import '../../chatRoom/ichatRoomRepo.dart' as _i7;
import '../../logInpage/Iauth.dart' as _i5;
import '../../mainPage/iMainRepo.dart' as _i3;
import '../verifyPage/Iverify.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IMainRepo>(() => _i4.MainRepos());
  gh.lazySingleton<_i5.Iauth>(() => _i6.Auth());
  gh.lazySingleton<_i7.IchatRoomRepo>(() => _i8.ChatRoomRepo());
  gh.lazySingleton<_i9.Iverify>(() => _i10.Verify());
  gh.factory<_i11.MainScreenBloc>(
      () => _i11.MainScreenBloc(get<_i3.IMainRepo>()));
  gh.factory<_i12.RegisterBloc>(() => _i12.RegisterBloc(get<_i5.Iauth>()));
  gh.factory<_i13.SignInBloc>(() => _i13.SignInBloc(get<_i5.Iauth>()));
  gh.factory<_i14.VerifyBloc>(() => _i14.VerifyBloc(get<_i9.Iverify>()));
  gh.factory<_i15.ChatRoomBloc>(
      () => _i15.ChatRoomBloc(get<_i7.IchatRoomRepo>()));
  return get;
}
