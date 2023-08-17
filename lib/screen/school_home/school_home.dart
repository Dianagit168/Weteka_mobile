import 'package:weteka/index.dart';

class SchoolHome extends StatelessWidget {
  const SchoolHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(
          context,
          isImg: false,
        ),
        body: const SchoolHomeBody(),
      ),
    );
  }
}
