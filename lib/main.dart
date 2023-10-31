import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weteka/presentation/screen/splash_screen.dart';

import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //home: const SplashScreen(),
      //home: const FirstLoading(),

      //home: const MainPageView(),
      // home: const Login(),
      // home: const Register(),
      // home: const ForgotPassword(),
      // home: const VerifyCode(),
      // home: const RenewPassword(),

      home: const MainTap(),
      //home: const ProfileAbout(),
      // home: ProgressScreen(),
      //home: SchoolScreen(),
      //home: KasetScreen(),
      // home: const WetekaChanel(),
      // home: const SinglePageCourse(),
      //home: SinglePageBook(),
      // home: SinglePageBookReading(),
      //home: SinglePageLKaset(),
    );
  }
}
