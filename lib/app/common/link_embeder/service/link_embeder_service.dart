import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:for_later_app/app/common/link_embeder/domain/link_embeder_interactor.dart';
import 'package:for_later_app/app/common/router/app_navigator.dart';
import 'package:for_later_app/app/common/router/routes.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class LinkEmbederService extends ChangeNotifier {
  LinkEmbederService({required AppNavigator appNavigator, required LinkEmbederInteractor interactor})
      : _appNavigator = appNavigator,
        _interactor = interactor {
    // initListenToSharedLinks();
  }

  final AppNavigator _appNavigator;
  final LinkEmbederInteractor _interactor;

  late StreamSubscription<List<SharedMediaFile>> _intentSub;

  void initListenToSharedLinks() {
    log('initListenToSharedLinks');
    // Listen to media sharing coming from outside the app while the app is in the memory.
    _intentSub = _interactor.getMediaStream().listen(
      (value) async {
        final url = value.first.path;
        _appNavigator.push(route: Routes.newItem, queryParameters: {'url': url});
      },
    );

    // Get the media sharing coming from outside the app while the app is closed.
    _interactor.getInitialMedia().then(
      (value) async {
        if (value.isNotEmpty) {
          final url = value.first.path;
          _appNavigator.push(route: Routes.newItem, queryParameters: {'url': url});
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _intentSub.cancel();
  }
}
