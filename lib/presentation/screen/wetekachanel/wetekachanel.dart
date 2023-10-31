import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/wetekachanel/schoolcourse.dart';
import 'package:weteka/presentation/screen/wetekachanel/schoolmember.dart';
import 'package:weteka/presentation/screen/wetekachanel/schoolroom.dart';

import 'homeschool.dart';

class WetekaChanel extends StatelessWidget {
  const WetekaChanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(
          context,
          isImg: false,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              coverAndProfile(context),
              follow(context),
              wetekaTab(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget coverAndProfile(BuildContext context) {
  return Stack(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          children: [
            Image.asset(
              'assets/images/weteka_port.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    title: 'Weteka Official',
                    isFontSize: false,
                    fontSize: 17,
                    color: Color.fromARGB(255, 2, 28, 60),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Image.asset(
                    'assets/images/verified.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Positioned(
        top: 120,
        left: 20,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 0, 115, 255),
              ),
              child: Image.asset(
                'assets/images/Group 42.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget follow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 18, right: 18, bottom: 5),
    child: ElevatedButtonCust(
      tit: 'Follow',
      w: 253700,
      h: 40,
      sizfo: 15,
      circleBut: 10,
      color: const Color.fromARGB(99, 0, 115, 255),
      onNavigator: () {},
    ),
  );
}

Widget wetekaTab(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 18,
      right: 18,
      top: 8,
    ),
    child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                isScrollable: true,
                physics: const ClampingScrollPhysics(),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(76, 0, 102, 255),
                ),
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: const Color.fromARGB(255, 2, 28, 60),
                labelColor: const Color.fromARGB(255, 0, 102, 255),
                tabs: const [
                  Text('Home'),
                  Text('Courses'),
                  Text('Room'),
                  Text('Members'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  HomeSchool(),
                  SchoolCourse(),
                  SchoolRoom(),
                  SchoolMember(),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
