import 'package:weteka/index.dart';

import 'cover&profile.dart';
import 'follow.dart';

class WetekaChanelBody extends StatelessWidget {
  const WetekaChanelBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          CoverAndProfile(),
          Follow(),
          WetekaTab(),
        ],
      ),
    );
  }
}
