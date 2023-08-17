import 'package:weteka/index.dart';

import 'package:weteka/widgets/schoolwidget/unfollowshortbutton.dart';

import 'followshortbutton.dart';

class SchoolBody extends StatelessWidget {
  const SchoolBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: const [
            UnfollowShortButton(
              img: 'assets/images/Group 42.png',
              tit: 'Wetwka official',
            ),
            FollowShortButton(),
          ],
        ),
      ),
    );
  }
}
