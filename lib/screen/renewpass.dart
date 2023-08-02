import 'package:flutter/material.dart';
import 'package:weteka/widgets/appbarcust.dart';

import '../widgets/renewpass_body.dart';

class RenewPassword extends StatelessWidget {
  const RenewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const RenewPasswordBody(),
    );
  }
}
