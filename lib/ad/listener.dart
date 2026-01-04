import 'package:anythink_sdk/at_index.dart';
import 'package:packory/main.dart';

// ignore: non_constant_identifier_names
final ListenerAd = ListenerUtils();

class ListenerUtils {
  void rewarderListen() {
    ATListenerManager.rewardedVideoEventHandler.listen((value) {
      if (value.rewardStatus == RewardedStatus.rewardedVideoDidRewardSuccess) {
        eventBus.fire('insertRewarder');
        eventBus.fire('pushRecord');
      } else if (value.rewardStatus == RewardedStatus.rewardedVideoDidClose) {
        eventBus.fire('pushRecord');
      }
    });
  }
}
