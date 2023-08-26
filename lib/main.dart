import 'package:weteka/screen/forgotpassword.dart';
import 'package:weteka/screen/progress/progress_screen.dart';
import 'package:weteka/screen/register.dart';
import 'package:weteka/screen/renewpass.dart';
import 'package:weteka/screen/school/school_screen.dart';
import 'package:weteka/screen/singlepage_book/singlepage_book.dart';
import 'package:weteka/screen/singlepage_book_resding/singlepage_book_resding.dart';
import 'package:weteka/screen/singlepage_kaset/singlepage_kaset.dart';
import 'package:weteka/screen/singlepagecourse/singpagecourse.dart';
import 'package:weteka/screen/verifycode.dart';
import 'package:weteka/screen/wetekachanel/wetekachanel.dart';

import 'index.dart';

void main() {
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
      //home: const FirstLoading(),

      //home: const MainPageView(),
      // home: const Login(),
      // home: const Register(),
      // home: const ForgotPassword(),
      // home: const VerifyCode(),
      // home: const RenewPassword(),

      // home: const MainTap(),
      //home: const ProfileAbout(),
      // home: ProgressScreen(),
      //home: SchoolScreen(),
      //home: KasetScreen(),
      // home: const WetekaChanel(),
      // home: const SinglePageCourse(),
      //home: SinglePageBook(),
      // home: SinglePageBookReading(),
      home: SinglePageLKaset(),
    );
  }
}
