import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class MainTap extends StatefulWidget {
  const MainTap({Key? key}) : super(key: key);

  @override
  State<MainTap> createState() => _MainTapState();
}

class _MainTapState extends State<MainTap> {
  int selectIndex = 0;
  List<Widget> allPage = [
    const HomeScreen(),
    LibraryScreen(),
    const CourseScreen(),
    const SchoolSubscribedScreen(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPage.elementAt(selectIndex),
      bottomNavigationBar: btmNavbar(context),
    );
  }

  Widget btmNavbar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GNav(
        tabBorderRadius: 16,
        tabBackgroundColor: const Color.fromARGB(24, 0, 115, 255),
        padding: const EdgeInsets.all(12),
        activeColor: hexaCodeToColor(AppColor.primaryColor),
        iconSize: 18,
        gap: 8,
        tabs: const [
          GButton(
            icon: LucideIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: LucideIcons.library,
            text: 'Library',
          ),
          GButton(
            icon: LucideIcons.video,
            text: 'Video',
          ),
          GButton(
            icon: LucideIcons.newspaper,
            text: 'Contents',
          ),
          GButton(
            icon: LucideIcons.menu,
            text: 'Menu',
          ),
        ],
        selectedIndex: selectIndex,
        onTabChange: (value) {
          setState(() {
            selectIndex = value;
          });
        },
      ),
    );
  }
}
