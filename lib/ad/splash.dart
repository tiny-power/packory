import 'package:anythink_sdk/at_index.dart';
import 'ad_config.dart';

// ignore: non_constant_identifier_names
final SplashAd = SplashUtils();

class SplashUtils {

  // 加载开屏广告
  Future<void> loadSplash() async {
    await ATSplashManager.loadSplash(
      placementID: AdConfig.rewarderId,
      extraMap: {
        // ATSplashManager.tolerateTimeout(): 5000
      }
    );
  }

  // 判断是否有开屏广告缓存
  Future<bool> splashReady() async {
    return await ATSplashManager.splashReady(
      placementID: AdConfig.rewarderId
    );
  }

  // 展示开屏广告
  Future<void> showSplashAd() async {
    await ATSplashManager.showSplash(
      placementID: AdConfig.rewarderId
    );
  }
}
