// ignore_for_file: unnecessary_const

import '../index.dart';
import 'button.dart';
import 'input_info.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({
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
            padding: const EdgeInsets.only(bottom: 30, top: 30),
            child: Image.asset('assets/images/weteka logo.png'),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InputInformation(
              tit: 'Username',
              titAlign: 295,
              preIcon: Icon(
                Icons.account_box_outlined,
                color: Color.fromARGB(95, 0, 115, 255),
              ),
              sufIcon: Icon(Icons.remove_red_eye_sharp),
              isSuf: false,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const InputInformation(
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
            height: 10,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InputInformation(
              tit: 'Password',
              titAlign: 295,
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
            padding: const EdgeInsets.only(left: 10),
            child: InputInformation(
              tit: 'Confirm password',
              titAlign: 243,
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
          Padding(
            padding: const EdgeInsets.only(
              left: 250,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot password',
                style: const TextStyle(
                  color: Color.fromARGB(184, 136, 182, 238),
                ),
              ),
            ),
          ),
          ElevatedButtonCust(
            tit: 'Sign up',
            w: 357,
            h: 45,
            sizfo: 17,
            circleBut: 32,
            onNavigator: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          //const Divider(height: 1),
          const Text(
            'Or',
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 115, 255),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Container(
              height: 50,
              // margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 0, 115, 255)),
                borderRadius: const BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 85),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('G',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 115, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      'Register with Google',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 115, 255)),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 85),
            child: Row(
              children: [
                const Text(
                  'Already have account!',
                  style: const TextStyle(
                    color: Color.fromARGB(184, 136, 182, 238),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 115, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/angkor 1.png'),
        ],
      ),
    );
  }
}
