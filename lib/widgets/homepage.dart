
import 'package:weteka/index.dart';
import 'bodyhomepage.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context),
        body: const BodyHomePage(),
      ),
    );
  }
}

