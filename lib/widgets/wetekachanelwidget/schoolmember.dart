import 'package:weteka/index.dart';
import 'package:weteka/widgets/customtext.dart';

import '../../data/subsribchanel.dart';

class SchoolMember extends StatelessWidget {
  const SchoolMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          '${chanel[index].img}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: CustomText(title: '${chanel[index].userName}'),
                      subtitle: Text('${chanel[index].position}'),
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
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              '${chanel[index].img}',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: CustomText(title: '${chanel[index].userName}'),
                    subtitle: Text('${chanel[index].position}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
