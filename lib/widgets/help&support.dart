import '../data/shortcutsitem.dart';
import '../index.dart';
import 'customtext.dart';

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomText(
                title: 'Help&Support',
              ),
              Icon(Icons.keyboard_arrow_up_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: helpsupportlist.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 75,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(17, 0, 115, 255),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 110),
                      child: Image.asset(
                        '${helpsupportlist[index].img}',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3, right: 50),
                      child: CustomText(
                        title: '${helpsupportlist[index].userName}',
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
