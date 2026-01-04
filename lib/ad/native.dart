// ignore_for_file: non_constant_identifier_names

import 'package:anythink_sdk/at_index.dart';
import 'package:packory/ad/ad_config.dart';

final NativeAd = NativeUtils();

class NativeUtils {
  // 加载原生广告
  Future<void> loadNative() async {
    await ATNativeManager.loadNativeAd(
      placementID: AdConfig.nativeId,
      extraMap: {
        ATCommon.isNativeShow(): false,
        ATCommon.getAdSizeKey(): ATNativeManager.createNativeSubViewAttribute(
          AdConfig.getWidth(),
          170,
        ),
        ATNativeManager.isAdaptiveHeight(): true,
      },
    );
  }

  // 判断是否有原生广告缓存
  Future<bool> nativeAdReady() async {
    return await ATNativeManager.nativeAdReady(placementID: AdConfig.nativeId);
  }

  // 展示原生广告
  Future<void> showNative() async {
    await ATNativeManager.showNativeAd(
      placementID: AdConfig.nativeId,
      extraMap: {
        ATNativeManager.parent(): ATNativeManager.createNativeSubViewAttribute(
          AdConfig.getWidth(),
          170,
          x: 0,
          y: AdConfig.getHeight() - 180,
          backgroundColorStr: '#ffffff',
        ),
        // ATNativeManager.appIcon(): ATNativeManager.createNativeSubViewAttribute(
        //   10,
        //   10,
        //   x: AdConfig.getWidth() / 2 + 20,
        //   y: 40,
        //   backgroundColorStr: 'clearColor',
        // ),
        ATNativeManager.mainTitle():
            ATNativeManager.createNativeSubViewAttribute(
              AdConfig.getWidth() / 2 - 20,
              30,
              x: AdConfig.getWidth() / 2 + 20,
              y: 30,
              textSize: 15,
            ),
        ATNativeManager.desc(): ATNativeManager.createNativeSubViewAttribute(
          AdConfig.getWidth() / 2 - 20,
          40,
          x: AdConfig.getWidth() / 2 + 20,
          y: 60,
          textSize: 15,
        ),
        ATNativeManager.cta(): ATNativeManager.createNativeSubViewAttribute(
          100,
          42,
          x: AdConfig.getWidth() / 2 + 30,
          y: 120,
          textSize: 15,
          textColorStr: "#FFFFFF",
          backgroundColorStr: "#2095F1",
          cornerRadius: 8,
          textAlignmentStr: 'center',
        ),
        ATNativeManager.mainImage():
            ATNativeManager.createNativeSubViewAttribute(
              AdConfig.getWidth() / 2,
              150,
              x: 10,
              y: 10,
              backgroundColorStr: '#00000000',
            ),
        ATNativeManager.adLogo(): ATNativeManager.createNativeSubViewAttribute(
          20,
          10,
          x: AdConfig.getWidth() - 30,
          y: 150,
          backgroundColorStr: '#00000000',
        ),
        ATNativeManager.dislike(): ATNativeManager.createNativeSubViewAttribute(
          20,
          20,
          x: AdConfig.getWidth() - 30,
          y: 10,
        ),
      },
      isAdaptiveHeight: true,
    );
  }

  // 删除原生广告
  Future<void> removeNative() async {
    await ATNativeManager.removeNativeAd(placementID: AdConfig.nativeId);
  }
}
