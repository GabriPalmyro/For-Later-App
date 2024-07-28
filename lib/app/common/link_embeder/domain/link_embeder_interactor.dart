import 'package:receive_sharing_intent/receive_sharing_intent.dart';

abstract class LinkEmbederInteractor {
  Stream<List<SharedMediaFile>> getMediaStream();
  Future<List<SharedMediaFile>> getInitialMedia();
}

class LinkEmbederInteractorImpl implements LinkEmbederInteractor {
  @override
  Stream<List<SharedMediaFile>> getMediaStream() => ReceiveSharingIntent.instance.getMediaStream();

  @override
  Future<List<SharedMediaFile>> getInitialMedia() => ReceiveSharingIntent.instance.getInitialMedia();
}