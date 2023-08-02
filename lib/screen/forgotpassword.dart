import 'package:flutter/material.dart';
import 'package:weteka/widgets/appbarcust.dart';
import 'package:weteka/widgets/forgotpass_body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const ForgotPasswordBody(),
    );
  }
}
