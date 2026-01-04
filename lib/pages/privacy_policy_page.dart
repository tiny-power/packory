import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("隐私政策")),
      body: SafeArea(
        child: ListView(
          padding: .all(12),
          children: [
            Text(
              '火烈鸟记账软件隐私协议',
              style: TextStyle(fontSize: 22, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '更新日期：2025-12-21      生效日期：2025-12-21',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10.0),
            Text('引言', style: TextStyle(fontSize: 22)),
            SizedBox(height: 10.0),
            Text(
              '火烈鸟记账重视用户的隐私。您在使用我们的服务时，我们可能会收集和使用您的相关信息。我们希望通过本《隐私政策》向您说明，在使用我们的服务时，我们如何收集、使用、储存和分享这些信息，以及我们为您提供的访问、更新、控制和保护这些信息的方式。本《隐私政策》与您所使用的火烈鸟记账服务息息相关，我们也希望您能够仔细阅读，并在需要时，按照本《隐私政策》的指引，作出您认为适当的选择。本《隐私政策》中涉及的相关技术词汇，我们尽量以简明扼要的表述向您解释，并提供了进一步说明的链接，以便您的理解。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们对本隐私权政策中与您的权益存在重大关系的条款用粗体字进行标注。如果您不同意本隐私权政策的部分或全部内容，您应立即停止使用火烈鸟记账软件服务并通过软件客服与我们联系。您通过勾选、点击确认、同意授权等方式确认本隐私权政策或直接使用及继续使用我们的服务，都表示您同意我们按照本《隐私政策》收集、使用、储存和分享您的信息。',
              style: TextStyle(fontSize: 17, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '如您对本《隐私政策》或与本《隐私政策》相关的事宜有任何问题，请通过www.tinybrief.app与我们联系',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们可能收集的信息',
              style: TextStyle(fontSize: 17, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们提供服务时，可能会收集、储存和使用下列与您有关的信息。如果您不提供相关信息，可能无法注册成为我们的用户、享受我们提供的某些服务，或者即便我们可以继续向您提供一些服务，也无法达到该服务拟达到的效果。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text('您提供的信息', style: TextStyle(fontSize: 17, fontWeight: .bold)),
            SizedBox(height: 10.0),
            Text(
              '    您在注册我们的账户或使用我们的服务时，向我们提供的相关个人信息，例如电话号码、电子邮件等；',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '   您通过我们的服务向其他方提供的共享信息，以及您使用我们的服务时所储存的信息。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '其他方分享的您的信息',
              style: TextStyle(fontSize: 17, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text('    其他方使用我们的服务时所提供有关您的共享信息。', style: TextStyle(fontSize: 17)),
            SizedBox(height: 10.0),
            Text(
              '我们获取的您的信息',
              style: TextStyle(fontSize: 17, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '    为了预防恶意程序，保障软件与服务的安全运行、提升运营的质量及效率，我们可能会收集如下信息：',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              '    日志信息指您使用我们服务时，系统可能会通过 cookies、web beacon 或其他方式自动采集的技术信息，包括：',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    设备或软件信息，例如您的移动设备、网页浏览器或您用于接入我们的服务的其他程序所提供的配置信息、您的IP地址和您的移动设备所用的版本和设备识别码；',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    您在使用我们服务时搜索和浏览的信息，例如您使用的网页搜索词语、访问的社交媒体页面url地址，以及您在使用我们服务时浏览或要求提供的其他信息和内容详情；',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    有关您曾使用的移动应用（APP）和其他软件的信息，以及您曾经使用该等移动应用和软件的信息；',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    为了保障软件与服务的安全运行，我们会收集您的应用安装列表、设备型号、设备名称、 设备唯一标识符（包括：IMEI、Android ID、IDFA、设备Mac地址）、语言设置、字体设置、操作系统和应用程序版本、登录IP地址、接入网络的方式、设备运行进程信息。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们获取的设备权限',
              style: TextStyle(fontSize: 17, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '在具体提供服务的过程中我们可能需要调用您的一些设备权限，例如为上传图片的目的获得您的照片访问权限；为实现拍照和上传目的获得您的相机权限；为实现保存图片目的获取您的存储权限；为定时提醒目的获取的自启动权限等，我们将在具体场景下以弹窗的形式询问并征得您的同意。您可以在设备的系统设置功能中选择打开或关闭相应的权限，从而允许或拒绝我们收集和使用您的个人信息。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text('您个人信息的存储', style: TextStyle(fontSize: 17, fontWeight: .bold)),
            SizedBox(height: 10.0),
            Text(
              '在中华人民共和国境内收集和产生的个人信息，将存储在中华人民共和国境内。在获得您的授权同意之前，您的个人信息不会向中华人民共和国境外传输和存储。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '您的相关信息保存将低于三年，如果超过三年我们将立即删除或做匿名化处理，但是您的个人账户注册信息在你申请注销前的账户持续存续期间，将由我们持续存储。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text('我们可能如何收集信息', style: TextStyle(fontSize: 17)),
            SizedBox(height: 10.0),
            Text(
              'cookies和web beacon的使用',
              style: TextStyle(fontSize: 17, fontWeight: .bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们或我们的第三方合作伙伴，可能通过 cookies 和 web beacon 收集和使用您的信息，并将该等信息储存为日志信息。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们使用自己的 cookies 和 web beacon，目的是为您提供更个性化的用户体验和服务，并用于以下用途：',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    记住您的身份。例如：cookies 和 web beacon 有助于我们辨认您作为我们的注册用户的身份；',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    分析您使用我们服务的情况。例如，我们可利用 cookies 和 web beacon 来了解您使用我们的服务进行什么活动、或哪些网页或服务最受欢迎；',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '    广告优化。cookies 和 web beacon 有助于我们根据您的信息，向您提供与您相关的广告而非进行普遍的广告投放。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们为上述目的使用 cookies 和 web beacon 的同时，可能将通过 cookies 和 web beacon 收集的非个人身份信息，经统计加工后提供给广告商或其他合作伙伴，用于分析用户如何使用我们的服务，并用于广告服',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '我们的产品和服务上可能会有广告商或其他合作方放置的 cookies 和 web beacon。这些 cookies 和 web beacon 可能会收集与您相关的非个人身份信息，以用于分析用户如何使用该等服务，或用于评估广告服务的效果。这些第三方 cookies 和 web beacon 收集和使用该等信息，不受本《隐私政策》约束，而是受相关使用者的隐私政策约束，我们不对第三方的 cookies 或 web beacon 承担责任。',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 10.0),
            Text(
              '您可以通过浏览器设置拒绝或管理 cookies 或 web beacon。但请注意，如果停用 cookies 或 web beacon，您有可能无法享受最佳的服务体验，某些服务也可能无法正常使用。同时，您还会收到同样数量的广告，但这些广告与您的相关性会降低。',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
