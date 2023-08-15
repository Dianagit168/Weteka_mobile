import '../../index.dart';
import '../button.dart';
import '../customtext.dart';

class FollowingChanel extends StatelessWidget {
  const FollowingChanel({
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
              'assets/images/tiktok.png',
              fit: BoxFit.cover,
            ),
          ),
          title: const CustomText(title: 'JavaScript Learner'),
          subtitle: const Text(
            '600 Followers',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Color.fromARGB(118, 2, 28, 60)),
          ),
        ),
        ElevatedButtonCust(
          tit: 'Follow',
          w: 250,
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
