import 'package:weteka/widgets/wetekachanelwidget/schoolcourse.dart';

import '../../index.dart';
import 'homeschool.dart';

class WetekaTab extends StatelessWidget {
  const WetekaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
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
                    ProfileFollowing(),
                    ProfileEnrollment(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
