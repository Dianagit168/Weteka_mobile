import 'package:weteka/index.dart';

class ProfileOwned extends StatelessWidget {
  const ProfileOwned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        exploreChanel(context),
        followChanel(context),
      ],
    );
  }

  Widget exploreChanel(BuildContext context) {
    return Column(
      children: [
        const ListTileCustom(
          img: 'assets/images/Group 42.png',
          tit: 'Wetwka official',
          subTit: '600 Followers',
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

  Widget followChanel(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: ownedData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTileCustom(
              img: '${ownedData[index].subimg}',
              tit: '${ownedData[index].tit2}',
              subTit: '${ownedData[index].subTit}',
            ),
            ElevatedButtonCust(
              tit: '${ownedData[index].tit}',
              w: 370,
              h: 40,
              sizfo: 15,
              circleBut: 10,
              //color: const Color.fromARGB(99, 0, 115, 255),
              onNavigator: () {},
            ),
            if (index == 2)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Divider(
                  color: Color.fromARGB(102, 2, 28, 60),
                  height: 5,
                ),
              ),
          ],
        );
      },
    );
  }
}
