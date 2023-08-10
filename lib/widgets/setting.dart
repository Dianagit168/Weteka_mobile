import '../data/shortcutsitem.dart';
import '../index.dart';
import 'customtext.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
                title: 'Settings',
              ),
              Icon(Icons.keyboard_arrow_up_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: settingList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
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
                      padding: const EdgeInsets.only(top: 8, right: 300),
                      child: Image.asset(
                        '${settingList[index].img}',
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 3, right: 255),
                        child: CustomText(
                          title: '${settingList[index].userName}',
                        ))
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
