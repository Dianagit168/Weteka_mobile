import 'package:weteka/index.dart';

import 'bodyschoolsub.dart';

class SchoolSubscribedPage extends StatelessWidget {
  const SchoolSubscribedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: wetekaAppBar(context),
        body: const SchoolSubBody(),
      ),
    );
  }
}
