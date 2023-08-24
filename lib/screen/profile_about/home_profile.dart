import 'package:weteka/index.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          allInformation(context),
          const Course(
            tit: 'Owned Contents',
            isTit: false,
          )
        ],
      ),
    );
  }

  Widget allInformation(BuildContext context) {
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
              color: const Color.fromARGB(255, 188, 213, 248),
              onNavigator: () {},
            ),
          ),
        ],
      ),
    );
  }
}
