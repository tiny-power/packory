import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("联系我们")),
      body: Center(
        child: Column(
          children: [Text('阿斯顿', style: TextStyle(color: Colors.yellow))],
        ),
      ),
    );
  }
}
