import 'package:anythink_sdk/at_index.dart';
import 'ad_config.dart';

// ignore: non_constant_identifier_names
final BannerAd = BannerUtils();

class BannerUtils {
  // 加载横幅广告
  Future<void> loadBanner() async {
    await ATBannerManager.loadBannerAd(
      placementID: AdConfig.bannerId,
      extraMap: {
        ATCommon.isNativeShow(): true,
        ATCommon.getAdSizeKey(): ATBannerManager.createLoadBannerAdSize(
          AdConfig.getWidth(),
          AdConfig.getWidth() * (50 / 320),
        ),
        ATBannerManager.getAdaptiveWidthKey(): AdConfig.getWidth(),
        ATBannerManager.getAdaptiveOrientationKey():
            ATBannerManager.adaptiveOrientationCurrent(),
      },
    );
  }

  // 判断是否有横幅广告缓存
  Future<bool> bannerAdReady() async {
    return await ATBannerManager.bannerAdReady(placementID: AdConfig.bannerId);
  }

  // 展示横幅广告
  Future<void> showBanner() async {
    await ATBannerManager.showBannerInRectangle(
      placementID: AdConfig.bannerId,
      extraMap: {
        ATCommon.getAdSizeKey(): ATBannerManager.createLoadBannerAdSize(
          AdConfig.getWidth(),
          60,
          x: 0,
          y: 164,
        ),
      },
    );
  }

  // 删除横幅广告
  Future<void> removeBanner() async {
    await ATBannerManager.removeBannerAd(placementID: AdConfig.bannerId);
  }
}
