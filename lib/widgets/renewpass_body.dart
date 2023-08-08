// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'button.dart';
import 'input_info.dart';

class RenewPasswordBody extends StatelessWidget {
  const RenewPasswordBody({
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
          const Text(
            'Make sure your password is secure!',
            style: TextStyle(color: Color.fromARGB(201, 0, 115, 255)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const InputInformation(
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
            padding: const EdgeInsets.only(left: 10),
            child: const InputInformation(
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
    );
  }
}
