import '../../index.dart';
import '../button.dart';
import '../customtext.dart';

class FollowChanel extends StatelessWidget {
  const FollowChanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ownedData.length,
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
                  '${ownedData[index].subimg}',
                  fit: BoxFit.cover,
                ),
              ),
              title: CustomText(title: '${ownedData[index].tit2}'),
              subtitle: Text(
                '${ownedData[index].subTit}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Color.fromARGB(118, 2, 28, 60)),
              ),
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
