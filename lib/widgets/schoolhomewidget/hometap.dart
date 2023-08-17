import 'package:weteka/index.dart';

import 'abouthometab.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            AboutHomeTab(),
            Course(
              tit: 'Owned Contents',
              padVal: 260,
              isTit: false,
            )
          ],
        ),
      ),
    );
  }
}
