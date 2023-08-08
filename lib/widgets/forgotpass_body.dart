import '../index.dart';
import 'button.dart';
import 'input_info.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
