import 'package:weteka/index.dart';

import '../../../data/subsribchanel.dart';

class SchoolMember extends StatelessWidget {
  const SchoolMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTileCustom(
                      img: '${chanel[index].img}',
                      tit: '${chanel[index].userName}',
                      subTit: '${chanel[index].position}',
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 70,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTileCustom(
                      img: '${chanel[index].img}',
                      tit: '${chanel[index].userName}',
                      subTit: '${chanel[index].position}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
