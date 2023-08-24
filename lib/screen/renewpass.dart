import 'package:weteka/widgets/input_info.dart';

import '../index.dart';

class RenewPassword extends StatelessWidget {
  const RenewPassword({Key? key}) : super(key: key);

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
              'Make sure your password is secure!',
              style: TextStyle(color: Color.fromARGB(201, 0, 115, 255)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: InputInformation(
                tit: 'Password',
                titAlign: 297,
                preIcon: Icon(
                  Icons.key_outlined,
                  color: Color.fromARGB(95, 0, 115, 255),
                ),
                sufIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color.fromARGB(95, 0, 115, 255),
                ),
                isSuf: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: InputInformation(
                tit: 'Confirm passwordr',
                titAlign: 240,
                preIcon: Icon(
                  Icons.key_outlined,
                  color: Color.fromARGB(95, 0, 115, 255),
                ),
                sufIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color.fromARGB(95, 0, 115, 255),
                ),
                isSuf: true,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButtonCust(
              tit: 'Confirm',
              w: 357,
              h: 45,
              sizfo: 17,
              circleBut: 32,
              onNavigator: () {},
            ),
            const Spacer(),
            Container(
                color: Colors.black,
                child: Image.asset('assets/images/angkor 1.png')),
          ],
        ),
      ),
    );
  }
}
