import 'dart:developer';

import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class UnityAdsHandler {
  static const String _androIdGameId = '4867453';
  static const String _iosIdGameId = '4867452';

  static void init() {
    UnityAds.init(
      gameId: _androIdGameId,
      testMode: false,
      onComplete: () {
        log('UnityAds iniciado com sucesso!');
      },
      onFailed: (error, errorMessage) {
        log('Erro ao iniciar o UnityAds!');
        log(errorMessage);
      },
    );
  }

  static void showVideoAd(
      Function onComplete, Function onFailed, Function onSkipped) {
    UnityAds.load(
      placementId: 'Rewarded_Android',
      onComplete: (placementId) {
        UnityAds.showVideoAd(
          placementId: placementId,
          onClick: (placementId) {
            log('Clicou UnityAds!');
          },
          onComplete: (placementId) {
            onComplete();
            log('Completou UnityAds!');
          },
          onFailed: (placementId, error, errorMessage) {
            log('Falhou UnityAds!');
            log(errorMessage);
            onFailed();
          },
          onSkipped: (placementId) {
            log('Pulou UnityAds!');
            onSkipped();
          },
          onStart: (placementId) {
            log('Comecou UnityAds!');
          },
        );
      },
      onFailed: (placementId, error, errorMessage) {
        log(errorMessage);
        onFailed();
      },
    );
  }

  static UnityBannerAd showBannerAd(BannerSize size) {
    return UnityBannerAd(
      placementId: 'Banner_Android',
      size: size,
    );
  }
}
