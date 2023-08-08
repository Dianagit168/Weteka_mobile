import '../index.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const SingleChildScrollView(
        physics: ScrollPhysics(),
        child: LoginBody(),
      ),
    );
  }
}
