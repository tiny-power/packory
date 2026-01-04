import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("关于我们")),
      body: Stack(
        alignment: .center,
        children: [
          Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    "assets/images/logo/blank.png",
                    width: 96,
                    height: 96,
                    cacheWidth: 96,
                    cacheHeight: 96,
                  ),
                ),
                Container(
                  margin: .only(top: 18),
                  child: Text(
                    '火烈鸟记账',
                    style: TextStyle(fontSize: 20, fontWeight: .bold),
                  ),
                ),
                Container(
                  margin: .only(top: 12),
                  child: Text(
                    '版本: v1.0.0',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                Container(
                  margin: .only(top: 12),
                  child: Text(
                    '记下的不是账，是未来的选择权',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: .bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 36,
            child: Text('@2025 Tiny. All rights reserved.'),
          ),
        ],
      ),
    );
  }
}
