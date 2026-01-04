// ignore_for_file: deprecated_member_use

import 'dart:ui';

class AdConfig {
  // appid
  static String appid = 'a693e5d3d45325';
  // 密钥
  static String secret = 'ac1bdb8de7d7493f693a4281d9059feea';
  // 开屏广告
  static String splashId = 'b693e5d81b47e2';
  // 激励广告
  static String rewarderId = 'b693e5d83755b2';
  // 插屏广告
  static String interstitialId = 'b693e5d82d4800';
  // 横幅广告
  static String bannerId = 'b693e5d8415fea';
  // 原生广告
  static String nativeId = 'b693e5d84ad25b';

  // 获取屏幕高度
  static double getWidth(){
    var dpr = window.devicePixelRatio;
    var  physicalWith = window.physicalSize.width;
    return physicalWith / dpr;
  }

  // 获取屏幕宽度
  static double getHeight(){
    var dpr = window.devicePixelRatio;
    var  physicalWith = window.physicalSize.height;
    return physicalWith / dpr;
  }
}
