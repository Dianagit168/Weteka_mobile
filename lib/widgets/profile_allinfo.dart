import '../index.dart';
import 'button.dart';
import 'customtext.dart';

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
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Image.asset('assets/images/map-pin.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text('Origin'),
                const SizedBox(
                  width: 3,
                ),
                const CustomText(
                  title: 'Kompong Thom',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Image.asset('assets/images/map-pin.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text('live in'),
                const SizedBox(
                  width: 3,
                ),
                const CustomText(
                  title: 'Phnom Penh',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Image.asset('assets/images/graduation-cap.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text('studied at'),
                const SizedBox(
                  width: 3,
                ),
                const CustomText(
                  title: 'TIC',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Image.asset('assets/images/list-video.png'),
                const SizedBox(
                  width: 10,
                ),
                const CustomText(
                  title: '3 Courses',
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text('owned'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Image.asset('assets/images/door-open.png'),
                const SizedBox(
                  width: 10,
                ),
                const CustomText(
                  title: '2 Following',
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text('schools'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Image.asset('assets/images/airplay.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text('Enrollment'),
                const SizedBox(
                  width: 3,
                ),
                const CustomText(
                  title: '3 Courses',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ElevatedButtonCust(
              tit: 'See less',
              colorTit: Color.fromARGB(255, 2, 28, 60),
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
