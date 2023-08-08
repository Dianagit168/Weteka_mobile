import '../index.dart';

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
