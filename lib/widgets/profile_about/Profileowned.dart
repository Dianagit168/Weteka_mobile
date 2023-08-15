import 'package:weteka/index.dart';

import 'explore.dart';
import 'followchanel.dart';

class ProfileOwned extends StatelessWidget {
  const ProfileOwned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ExploreChanel(),
        FollowChanel(),
      ],
    );
  }
}
