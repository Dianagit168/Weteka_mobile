// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../widgets/appbarcust.dart';

import '../widgets/login_body.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const SingleChildScrollView(
        physics: ScrollPhysics(),
        child: const LoginBody(),
      ),
    );
  }
}