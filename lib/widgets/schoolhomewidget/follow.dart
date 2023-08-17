import '../../index.dart';
import '../button.dart';

class Follow extends StatelessWidget {
  const Follow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 5),
      child: ElevatedButtonCust(
        tit: 'Follow',
        w: 253700,
        h: 40,
        sizfo: 15,
        circleBut: 10,
        color: const Color.fromARGB(99, 0, 115, 255),
        onNavigator: () {},
      ),
    );
  }
}
