import 'package:weteka/index.dart';

import 'abouthomeschool.dart';

class HomeSchool extends StatelessWidget {
  const HomeSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const AboutHomeSchool(),
        ),
      ),
    );
  }
}
