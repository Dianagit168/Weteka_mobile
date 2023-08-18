import '../../index.dart';
import '../button.dart';

import '../information.dart';
import 'description.dart';
import 'grade.dart';

class AboutHomeSchool extends StatelessWidget {
  const AboutHomeSchool({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Information(
              img: 'assets/images/graduation-cap.png',
              tit: 'Teachers',
              boldTit: '30',
              tempTit: false,
            ),
            const Information(
              img: 'assets/images/shield-check.png',
              tit: 'followers',
              boldTit: '1.2k',
              tempTit: false,
            ),
            const Information(
              img: 'assets/images/list-video.png',
              tit: 'owned',
              boldTit: '3 Courses',
              tempTit: false,
            ),
            const Description(),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: ElevatedButtonCust(
                tit: 'See less',
                colorTit: const Color.fromARGB(255, 2, 28, 60),
                w: 370,
                h: 40,
                sizfo: 15,
                circleBut: 10,
                isColor: false,
                color: const Color.fromARGB(255, 221, 226, 233),
                onNavigator: () {},
              ),
            ),
            const Grade(),
            const Course(
              tit: 'Contents',
              isTit: false,
            )
          ],
        ),
      ),
    );
  }
}
