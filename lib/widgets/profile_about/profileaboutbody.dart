import 'package:weteka/index.dart';

import 'package:weteka/widgets/profile_about/tapbarprofile.dart';

import 'cover&profile.dart';

class ProfileAboutBody extends StatelessWidget {
  const ProfileAboutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      CoverProfile(),
      TapbarProfile(),
    ]);
  }
}
