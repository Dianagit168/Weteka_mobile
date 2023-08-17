import '../../index.dart';
import '../button.dart';

import '../information.dart';
import 'description.dart';

class AboutHomeTab extends StatelessWidget {
  const AboutHomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Information(
            img: 'assets/images/graduation-cap.png',
            tit: 'Teachers',
            boldTit: '30',
          ),
          const Information(
            img: 'assets/images/shield-check.png',
            tit: 'followers',
            boldTit: '1.2k',
          ),
          const Information(
            img: 'assets/images/list-video.png',
            tit: 'owned',
            boldTit: '3 Courses',
          ),
          const Description(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
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
        ],
      ),
    );
  }
}
