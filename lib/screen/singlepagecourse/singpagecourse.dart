import 'package:weteka/index.dart';

import '../../widgets/singlepagecourse/video.dart';
import 'chanel.dart';
import 'interested.dart';

class SinglePageCourse extends StatelessWidget {
  const SinglePageCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              Video(),
              Chanel(),
              Interested(),
            ],
          ),
        ),
      ),
    );
  }
}
