import 'package:weteka/index.dart';
import 'package:weteka/widgets/button.dart';
import 'package:weteka/widgets/customtext.dart';

class ProfileFollowing extends StatelessWidget {
  const ProfileFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
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
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero, //គម្លាតក្នុងListtrile
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      '${ownedData[index = 2].subimg}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: CustomText(title: '${ownedData[index = 2].tit2}'),
                  subtitle: Text(
                    '${ownedData[index].subTit}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Color.fromARGB(118, 2, 28, 60)),
                  ),
                ),
                ElevatedButtonCust(
                  isColor: false,
                  tit: '${ownedData[index = 2].tit}',
                  colorTit: const Color.fromARGB(255, 2, 28, 60),
                  w: 250,
                  h: 40,
                  sizfo: 15,
                  circleBut: 10,
                  color: Color.fromARGB(255, 245, 245, 245),
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
        ),
      ],
    );
  }
}
