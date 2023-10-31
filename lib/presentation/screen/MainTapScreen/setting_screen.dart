import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weteka/data/shortcutsitem.dart';
import 'package:weteka/index.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar:
              wetekaAppBar(context, isImg: false, title: 'Menu', isIcon: false),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: Column(
                children: [
                  userAcountAndSwitch(context),
                  shortCut(context),
                  community(context),
                  helpAndSupport(context),
                  settings(context),
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

  Widget userAcountAndSwitch(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
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
      ],
    );
  }

  Widget shortCut(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          child: CustomText(
            title: 'Shortcuts',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: shorcutsItem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 75,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(17, 0, 115, 255),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.asset(
                        '${shorcutsItem[index].img}',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: CustomText(
                        title: '${shorcutsItem[index].userName}',
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget community(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                title: 'Community',
              ),
              Icon(Icons.keyboard_arrow_up_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: commulist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 75,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(17, 0, 115, 255),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      child: Image.asset(
                        '${commulist[index].img}',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: CustomText(
                        title: '${commulist[index].userName}',
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget helpAndSupport(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                title: 'Help&Support',
              ),
              Icon(Icons.keyboard_arrow_up_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: helpsupportlist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 75,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(17, 0, 115, 255),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.asset(
                        '${helpsupportlist[index].img}',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: CustomText(
                        title: '${helpsupportlist[index].userName}',
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget settings(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                title: 'Settings',
              ),
              Icon(Icons.keyboard_arrow_up_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: settingList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 75,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(17, 0, 115, 255),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.asset(
                        '${settingList[index].img}',
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: CustomText(
                          title: '${settingList[index].userName}',
                        ))
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
