import 'package:flutter/material.dart';
import 'package:weteka/widgets/appbarcust.dart';

import '../widgets/verifycode_body.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const VerifyCodeBody(),
    );
  }
}
