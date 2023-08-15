import '../../index.dart';
import '../button.dart';

import '../information.dart';

class AllInformation extends StatelessWidget {
  const AllInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Information(
            img: 'assets/images/map-pin.png',
            tit: 'Origin',
            boldTit: 'Kompong Thom',
          ),
          const Information(
            img: 'assets/images/map-pin.png',
            tit: 'live in',
            boldTit: 'Phnom Penh',
          ),
          const Information(
            img: 'assets/images/graduation-cap.png',
            tit: 'studied at',
            boldTit: 'TIC',
          ),
          const Information(
            img: 'assets/images/list-video.png',
            tit: 'owned',
            boldTit: '3 Courses',
            tempTit: false,
          ),
          const Information(
            img: 'assets/images/door-open.png',
            tit: 'schools',
            boldTit: '2 Following',
            tempTit: false,
          ),
          const Information(
            img: 'assets/images/airplay.png',
            tit: 'Enrollment',
            boldTit: '3 Courses',
          ),
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
