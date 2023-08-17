import 'package:weteka/index.dart';
import 'package:weteka/widgets/schoolhomewidget/subscreen.dart';

import 'cover&profile.dart';
import 'follow.dart';

class SchoolHomeBody extends StatelessWidget {
  const SchoolHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          CoverAndProfile(),
          Follow(),
          TapbarHomeSchool(),
        ],
      ),
    );
  }
}
