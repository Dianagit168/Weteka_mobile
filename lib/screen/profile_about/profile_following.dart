import 'package:weteka/index.dart';

class ProfileFollowing extends StatelessWidget {
  const ProfileFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        followingChanel(context),
        unFollowChanel(context),
      ],
    );
  }

  Widget followingChanel(BuildContext context) {
    return Column(
      children: [
        const ListTileCustom(
          img: 'assets/images/tiktok.png',
          tit: 'JavaScript Learner',
          subTit: '600 Followers',
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

  Widget unFollowChanel(BuildContext context) {
    return Column(
      children: [
        const ListTileCustom(
          img: 'assets/images/smartinterior.png',
          tit: 'JSmart interior',
          subTit: '600 Followers',
        ),
        ElevatedButtonCust(
          isColor: false,
          tit: 'Unfollow',
          colorTit: const Color.fromARGB(255, 2, 28, 60),
          w: 250,
          h: 40,
          sizfo: 15,
          circleBut: 10,
          color: const Color.fromARGB(255, 245, 245, 245),
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
