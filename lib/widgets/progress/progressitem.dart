import 'package:weteka/index.dart';

class ProgressItem extends StatelessWidget {
  const ProgressItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(
          context,
          isImg: false,
        ),
        body: ProgressBody(),
      ),
    );
  }
}
