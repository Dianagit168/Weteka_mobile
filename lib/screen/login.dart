// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/input_info.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(184, 136, 182, 238),
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/weteka logo.png'),
              const InputInformation(
                tit: 'Email',
                titAlign: 343,
                preIcon: Icon(
                  Icons.email_outlined,
                  color: const Color.fromARGB(95, 0, 115, 255),
                ),
                sufIcon: Icon(Icons.remove_red_eye_sharp),
                isSuf: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const InputInformation(
                tit: 'Password',
                titAlign: 315,
                preIcon: Icon(
                  Icons.key_outlined,
                  color: const Color.fromARGB(95, 0, 115, 255),
                ),
                sufIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: const Color.fromARGB(95, 0, 115, 255),
                ),
                isSuf: true,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 240,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password'),
                ),
              ),
              ElevatedButtonCust(
                tit: 'Login',
                w: 375,
                h: 45,
                sizfo: 17,
                circleBut: 32,
                onNavigator: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              //const Divider(height: 1),
              const Text(
                'Or',
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 115, 255),
                ),
              ),
            ],
          ),
        ));
  }
}
