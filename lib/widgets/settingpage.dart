import 'package:weteka/index.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar:
            wetekaAppBar(context, isImg: false, title: 'Menu', isIcon: false),
        body: const SettingBody(),
      ),
    );
  }
}
