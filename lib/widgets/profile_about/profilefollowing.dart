import 'package:weteka/index.dart';

import 'package:weteka/widgets/profile_about/unfollowchanel.dart';

import 'followingchanel.dart';

class ProfileFollowing extends StatelessWidget {
  const ProfileFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FollowingChanel(),
        UnfollowChanel(),
      ],
    );
  }
}
