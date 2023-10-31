import 'package:weteka/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoMainPageView(context);
    super.initState();
  }

  gotoMainPageView(context) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPageView(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return const FirstLoading();
  }
}
