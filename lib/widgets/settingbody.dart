import 'package:weteka/widgets/setting.dart';
import 'package:weteka/widgets/shortcuts.dart';

import '../index.dart';
import 'button.dart';
import 'community.dart';
import 'help&support.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 4,
            right: 4,
          ),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/Ellipse 4.png',
                ),
                title: const Text(
                  'Diana',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 115, 255),
                  ),
                ),
                subtitle: const Text(
                  'See your profile',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(141, 2, 28, 60),
                  ),
                ),
                trailing: Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/ic_sharp-cameraswitch.png',
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Image.asset(
                          'assets/images/Group 42.png',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                child: Divider(
                  color: Color.fromARGB(102, 2, 28, 60),
                  height: 3,
                ),
              ),
              const ShortcutWidget(),
              const Community(),
              const HelpAndSupport(),
              const Settings(),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButtonCust(
                  tit: 'Logout',
                  w: 370,
                  h: 45,
                  sizfo: 17,
                  circleBut: 10,
                  isColor: false,
                  color: const Color.fromARGB(255, 247, 84, 111),
                  onNavigator: () {},
                ),
              ),
              const SizedBox(
                height: 250,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
