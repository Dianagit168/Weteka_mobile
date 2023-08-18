import 'package:weteka/index.dart';

import 'package:weteka/widgets/profile_about/profile_allinfo.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            AllInformation(),
            Course(
              tit: 'Owned Contents',
              isTit: false,
            )
          ],
        ),
      ),
    );
  }
}
