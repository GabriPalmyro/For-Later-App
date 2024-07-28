// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:for_later_app/app/common/link_embeder/di/link_embeder_module.dart'
    as _i6;
import 'package:for_later_app/app/common/link_embeder/domain/link_embeder_interactor.dart'
    as _i3;
import 'package:for_later_app/app/common/link_embeder/service/link_embeder_service.dart'
    as _i4;
import 'package:for_later_app/app/common/router/app_navigator.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initAppGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final linkEmbederModule = _$LinkEmbederModule();
    gh.factory<_i3.LinkEmbederInteractor>(
        () => linkEmbederModule.providesInteractor());
    gh.factory<_i4.LinkEmbederService>(() => linkEmbederModule.providesService(
          gh<_i5.AppNavigator>(),
          gh<_i3.LinkEmbederInteractor>(),
        ));
    return this;
  }
}

class _$LinkEmbederModule extends _i6.LinkEmbederModule {}
