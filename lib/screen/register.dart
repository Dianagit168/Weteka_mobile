import 'package:flutter/material.dart';

import '../widgets/appbarcust.dart';

import '../widgets/register_body.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const SingleChildScrollView(
        physics: ScrollPhysics(),
        child: RegisterBody(),
      ),
    );
  }
}
