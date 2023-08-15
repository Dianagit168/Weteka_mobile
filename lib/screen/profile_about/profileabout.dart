import 'package:weteka/index.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(
          context,
          isImg: false,
          title: 'Menu',
        ),
        body: const SingleChildScrollView(child: ProfileAboutBody()),
      ),
    );
  }
}
