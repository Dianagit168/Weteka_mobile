import '../../index.dart';
import '../button.dart';
import '../customtext.dart';

class FollowShortButton extends StatelessWidget {
  const FollowShortButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: followschoolData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  '${followschoolData[index].subimg}',
                  fit: BoxFit.cover,
                ),
              ),
              title: CustomText(title: '${followschoolData[index].tit2}'),
              subtitle: Text(
                '${followschoolData[index].subTit}',
                style: const TextStyle(
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
      },
    );
  }
}
