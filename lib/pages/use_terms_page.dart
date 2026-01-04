import 'package:flutter/material.dart';

class UseTermsPage extends StatelessWidget {
  const UseTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户协议")),
      body: SafeArea(
        child: ListView(
          padding: .all(12),
          children: [
            Text(
              'Packory软件用户协议',
              style: TextStyle(fontSize: 22, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '更新日期：2025-12-21      生效日期：2025-12-21',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10.0),
            Text('说明', style: TextStyle(fontSize: 22)),
            SizedBox(height: 10.0),
            Text(
              '欢迎您使用Packory应用程序(以下简称“应用")向您提供的记账以及服务(以下称“记账服务"或“本服务")!为使用本服务，您应当阅读并遵守《咔皮记账用户协议》(以下称“本协议")、《个人信息保护政策》等相关协议政策及规则。',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10.0),
            Text(
              '请您务必审慎阅读、充分理解本协议及其他相关协议、政策和规则的各条款内容。免除或者限制责任的条款将以粗体标识，用户需要重点阅读。当您点击“同意"或“下一步"，或使用本服务，或以其他任何明示或者默示方式表示接受本协议的，均视为您已阅读并同意签署本协议。若您不同意本协议中的任何条款，您应立即停止注册本应用账号或停止使用本应用。',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10.0),
            Text(
              '本服务主要面向成年人(原则上18周岁以上为成年人，16周岁以上且以自己的劳动收入为主要生活来源的我们亦视为成年人)。如果您因年龄、智力等因素而不具有完全民事行为能力，则您应该在法定监护人(以下简称“监护人")的陪同下阅读并判断是否同童本协议，并在监护人的指导下正确使用本服务。若您未取得监护人的同意，我们有权对相关账号的功能、使用进行限制，包括但不限于浏览、发布信息、互动交流等功能。',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们再次提示您审慎阅读、充分理解各条款内容，特别是免除或限制责任、法律适用和争议解决的相应条款，免除或限制责任条款可能会以加粗或其他醒目形式提示您注意。如您对本协议有任何疑问，可以选择通过本协议第十三条提供的联系方式向我们咨询，亦可以与我们协商对本协议条款做出合理修改并另行签订。',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10.0),
            Text(
              '如果您是中华人民共和国大陆地区以外的用户，您订立或履行本协议还需要同时遵守您所属和/或所处国家或地区的法律。',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
