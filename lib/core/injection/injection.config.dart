// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dynoacademy/core/app_routers/app_routers.dart' as _i3;
import 'package:dynoacademy/core/services/intercepters.dart' as _i4;
import 'package:dynoacademy/core/services/local_storage.dart' as _i5;
import 'package:dynoacademy/core/services/toast_services.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouters>(_i3.AppRouters());
    gh.factory<_i4.DioService>(() => _i4.DioService());
    gh.factory<_i5.LocalStorageService>(() => _i5.LocalStorageService());
    gh.lazySingleton<_i6.ToastService>(() => _i6.ToastService());
    return this;
  }
}
