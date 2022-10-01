// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/RegBloc/register_bloc.dart' as _i7;
import '../../../application/signInBloc/sign_in_bloc.dart' as _i8;
import '../../../application/verifyBloc/verify_bloc.dart' as _i9;
import '../../../infrastructure/logInReg/auth.dart' as _i4;
import '../../../infrastructure/verifyPage/verify.dart' as _i6;
import '../../logInpage/Iauth.dart' as _i3;
import '../verifyPage/Iverify.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.Iauth>(() => _i4.Auth());
  gh.lazySingleton<_i5.Iverify>(() => _i6.Verify());
  gh.factory<_i7.RegisterBloc>(() => _i7.RegisterBloc(get<_i3.Iauth>()));
  gh.factory<_i8.SignInBloc>(() => _i8.SignInBloc(get<_i3.Iauth>()));
  gh.factory<_i9.VerifyBloc>(() => _i9.VerifyBloc(get<_i5.Iverify>()));
  return get;
}
