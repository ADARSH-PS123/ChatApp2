// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/mainScreenBloc/main_screen_bloc.dart' as _i9;
import '../../../application/RegBloc/register_bloc.dart' as _i10;
import '../../../application/signInBloc/sign_in_bloc.dart' as _i11;
import '../../../application/verifyBloc/verify_bloc.dart' as _i12;
import '../../../infrastructure/logInReg/auth.dart' as _i6;
import '../../../infrastructure/mainPage/mainRepo.dart' as _i4;
import '../../../infrastructure/verifyPage/verify.dart' as _i8;
import '../../logInpage/Iauth.dart' as _i5;
import '../../mainPage/iMainRepo.dart' as _i3;
import '../verifyPage/Iverify.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.IMainRepo>(() => _i4.MainRepo());
  gh.lazySingleton<_i5.Iauth>(() => _i6.Auth());
  gh.lazySingleton<_i7.Iverify>(() => _i8.Verify());
  gh.factory<_i9.MainScreenBloc>(
      () => _i9.MainScreenBloc(get<_i3.IMainRepo>()));
  gh.factory<_i10.RegisterBloc>(() => _i10.RegisterBloc(get<_i5.Iauth>()));
  gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc(get<_i5.Iauth>()));
  gh.factory<_i12.VerifyBloc>(() => _i12.VerifyBloc(get<_i7.Iverify>()));
  return get;
}
