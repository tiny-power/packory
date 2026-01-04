// import 'package:bookkeeping/manager/banner.dart';
// import 'package:bookkeeping/manager/native.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    // BannerManager.removeBannerAd();
    // NativeManager.removeNativeAd();
    super.initState();
  }

  void _onTap(String type) {
    context.push('/$type');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('设置'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(width: double.infinity, height: 12),
                Padding(
                  padding: .only(bottom: 12, left: 12, right: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primaryContainer,
                          Theme.of(context).colorScheme.secondaryContainer,
                          Theme.of(context).colorScheme.primaryContainer,
                        ],
                      ),
                    ),
                    width: double.infinity,
                    height: 120,
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: .end,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Packory",
                          style: TextStyle(
                            fontSize: 28,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: .bold,
                          ),
                        ),
                        Text(
                          "No Data Collection & Full privacy",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: .only(bottom: 12, left: 12, right: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: double.infinity,
                    height: 195,
                    padding: .only(left: 12),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => _onTap('record'),
                          child: SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.details,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "操作记录",
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Theme.of(context).colorScheme.outlineVariant,
                        ),
                        GestureDetector(
                          onTap: () => _onTap('useTermsPage'),
                          child: SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.policy,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "用户协议",
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Theme.of(context).colorScheme.outlineVariant,
                        ),
                        GestureDetector(
                          onTap: () => _onTap('privacyPolicyPage'),
                          child: SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.privacy_tip,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "隐私政策",
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Theme.of(context).colorScheme.outlineVariant,
                        ),
                        GestureDetector(
                          onTap: () => _onTap('aboutUsPage'),
                          child: SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.reviews,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "关于我们",
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
