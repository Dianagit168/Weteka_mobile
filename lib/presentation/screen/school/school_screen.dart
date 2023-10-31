import 'package:weteka/index.dart';

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({Key? key}) : super(key: key);

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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                unfollowShortButton(
                  context,
                  img: 'assets/images/Group 42.png',
                  tit: 'Wetwka official',
                ),
                followShortButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget unfollowShortButton(BuildContext context, {String? img, String? tit}) {
  return Column(
    children: [
      ListTileCustom(
        img: img,
        tit: tit,
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

Widget followShortButton(BuildContext context) {
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    shrinkWrap: true,
    itemCount: followschoolData.length,
    itemBuilder: (context, index) {
      return Column(
        children: [
          ListTileCustom(
            img: '${followschoolData[index].subimg}',
            tit: '${followschoolData[index].tit2}',
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
    },
  );
}
