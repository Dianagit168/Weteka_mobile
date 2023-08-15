import '../../index.dart';
import '../button.dart';
import '../customtext.dart';

class ExploreChanel extends StatelessWidget {
  const ExploreChanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              'assets/images/Group 42.png',
              fit: BoxFit.cover,
            ),
          ),
          title: const CustomText(title: 'Wetwka official'),
          subtitle: const Text(
            '600 Followers',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Color.fromARGB(118, 2, 28, 60)),
          ),
        ),
        ElevatedButtonCust(
          isColor: false,
          tit: 'Explore',
          colorTit: const Color.fromARGB(255, 0, 102, 255),
          w: 370,
          h: 40,
          sizfo: 15,
          circleBut: 10,
          color: const Color.fromARGB(99, 0, 115, 255),
          onNavigator: () {},
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Divider(
            color: Color.fromARGB(102, 2, 28, 60),
            height: 4,
          ),
        ),
      ],
    );
  }
}
