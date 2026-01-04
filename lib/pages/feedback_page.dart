import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("意见反馈")),
      body: Center(
        child: Column(
          children: [Text('阿斯顿', style: TextStyle(color: Colors.yellow))],
        ),
      ),
    );
  }
}
