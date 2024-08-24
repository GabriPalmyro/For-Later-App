import 'package:flutter/material.dart';
import 'package:for_later_app/app/common/link_embeder/service/link_embeder_service.dart';

class SharesProvider extends ChangeNotifier {
  SharesProvider(this.service);
  final LinkEmbederService service;

  // List<Share> _shares = [];
  // List<Share> get shares => _shares;

  Future<void> getShares() async {
    // _shares = await repository.getShares();
    // notifyListeners();
  }
}