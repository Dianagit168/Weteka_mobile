import 'package:weteka/widgets/boxpin.dart';

import '../index.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, top: 110),
              child: Image.asset('assets/images/weteka logo.png'),
            ),
            const Text(
              'Enter that was sent to ',
              style: TextStyle(color: Color.fromARGB(201, 0, 115, 255)),
            ),
            const Text(
              'example**@gmail.com',
              strutStyle: StrutStyle(height: 1.5),
              style: TextStyle(color: Color.fromARGB(201, 0, 115, 255)),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BoxPin(),
                  BoxPin(),
                  BoxPin(),
                  BoxPin(),
                ],
              ),
            ),
            const Text(
              'Not received code yet.',
              style: TextStyle(color: Color.fromARGB(201, 0, 115, 255)),
            ),
            const Text(
              'Resend',
              strutStyle: StrutStyle(height: 1.5),
              style: TextStyle(
                  color: Color.fromARGB(201, 0, 115, 255),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButtonCust(
              tit: 'Verify',
              w: 357,
              h: 45,
              sizfo: 17,
              circleBut: 32,
              onNavigator: () {},
            ),
            const Spacer(),
            Container(
              color: Colors.amber,
              child: Image.asset(
                'assets/images/angkor 1.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
