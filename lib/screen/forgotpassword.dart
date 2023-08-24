import 'package:weteka/widgets/input_info.dart';

import '../index.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: InputInformation(
                tit: 'Email',
                titAlign: 324,
                preIcon: Icon(
                  Icons.email_outlined,
                  color: Color.fromARGB(95, 0, 115, 255),
                ),
                sufIcon: Icon(Icons.remove_red_eye_sharp),
                isSuf: false,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButtonCust(
              tit: 'Get code',
              w: 357,
              h: 45,
              sizfo: 17,
              circleBut: 32,
              onNavigator: () {},
            ),
            const Spacer(),
            Container(
                color: Colors.amber,
                child: Image.asset('assets/images/angkor 1.png')),
          ],
        ),
      ),
    );
  }
}
