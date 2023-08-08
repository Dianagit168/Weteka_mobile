import '../index.dart';

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
