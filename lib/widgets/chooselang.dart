import '../index.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  var curIt1 = 'Khmer';
  var curIt2 = 'English';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 0, 115, 255)),
              borderRadius: const BorderRadius.all(Radius.circular(32))),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: const SizedBox(),
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            items: listLang.map((Map itemC) {
              return DropdownMenuItem<String>(
                value: itemC['name'],
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Text(itemC['name']),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage(itemC['logo']),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            onChanged: (newItemC) {
              curIt1 = newItemC!;
            },
            value: curIt1,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.only(right: 16),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 115, 255),
              // border: Border.all(color: const Color.fromARGB(255, 0, 115, 255)),
              borderRadius: BorderRadius.all(Radius.circular(32))),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: const SizedBox(),
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            items: listLang.map((Map itemC) {
              return DropdownMenuItem<String>(
                value: itemC['name'],
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Text(itemC['name']),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 0, 115, 255),
                        child: Image(
                          image: AssetImage(itemC['logo']),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            onChanged: (newItemC) {
              curIt2 = newItemC!;
            },
            value: curIt2,
          ),
        ),
      ],
    );
  }
}
