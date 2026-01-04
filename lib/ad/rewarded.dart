import 'package:anythink_sdk/at_index.dart';
import 'ad_config.dart';
 
// ignore: non_constant_identifier_names
final RewardedAd = RewarderUtils();

class RewarderUtils {
   
  // 加载激励广告
  Future<void> loadRewarded() async {
    await ATRewardedManager.loadRewardedVideo(
      placementID: AdConfig.rewarderId,
      extraMap: {ATRewardedManager.kATAdLoadingExtraUserIDKey(): '1234'}
    );
  }

  // 判断是否有激励广告缓存
  Future<bool> rewardedReady() async {
    return await ATRewardedManager.rewardedVideoReady(
      placementID: AdConfig.rewarderId
    );
  }

  // 展示激励广告
  Future<void> showRewarded() async {
    await ATRewardedManager.showRewardedVideo(
      placementID: AdConfig.rewarderId
    );
  }
}
