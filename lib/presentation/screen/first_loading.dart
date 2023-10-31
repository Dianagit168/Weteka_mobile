import '../../index.dart';

class FirstLoading extends StatelessWidget {
  const FirstLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/Group 5.png'),
        ),
      ),
    );
  }
}
