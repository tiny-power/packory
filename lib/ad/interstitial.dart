import 'package:anythink_sdk/at_index.dart';
import 'ad_config.dart';

// ignore: non_constant_identifier_names
final InterstitialAd = InterstitialUtils();

class InterstitialUtils {

  // 加载插屏广告
  Future<void> loadInterstitial() async {
    await ATInterstitialManager.loadInterstitialAd(
      placementID: AdConfig.interstitialId,
      extraMap: {
        // Sigmob rewarded video ----> Interstitial ads
        // ATInterstitialManager.useRewardedVideoAsInterstitialKey(): true
      },
    );
  }

  // 判断是否有插屏广告缓存
  Future<bool> interstitialAdReady() async {
    return await ATInterstitialManager.hasInterstitialAdReady(
      placementID: AdConfig.interstitialId
    );
  }

  // 展示插屏广告
  Future<void> showInterstitial() async {
    await ATInterstitialManager.showInterstitialAd(
      placementID: AdConfig.interstitialId
    );
  }
}
