import 'package:for_later_app/app/common/link_embeder/domain/link_embeder_interactor.dart';
import 'package:for_later_app/app/common/link_embeder/service/link_embeder_service.dart';
import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:injectable/injectable.dart';

@module
abstract class LinkEmbederModule {
  LinkEmbederInteractor providesInteractor() => LinkEmbederInteractorImpl();

  LinkEmbederService providesService(
    AppNavigator appNavigator,
    LinkEmbederInteractor interactor,
  ) =>
      LinkEmbederService(
        appNavigator: appNavigator,
        interactor: interactor,
      );
}
