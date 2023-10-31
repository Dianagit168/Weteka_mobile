import 'package:lucide_icons/lucide_icons.dart';
import 'package:weteka/presentation/screen/register.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';
import 'package:weteka/widgets/input_info.dart';

import '../../index.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 110),
                child: Image.asset('assets/images/weteka logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InputInformation(
                  tit: 'Email',
                  titAlign: 300,
                  preIcon: Icon(LucideIcons.mail,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  sufIcon: const Icon(LucideIcons.eye),
                  isSuf: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InputInformation(
                  tit: 'Password',
                  titAlign: 250,
                  preIcon: Icon(LucideIcons.lock,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  sufIcon: Icon(Icons.remove_red_eye_outlined,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  isSuf: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                        color: hexaCodeToColor(AppColor.primaryColor30)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButtonCust(
                  tit: 'Login',
                  w: 357,
                  h: 45,
                  sizfo: 17,
                  circleBut: 32,
                  onNavigator: () {},
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Or',
                style: TextStyle(color: hexaCodeToColor(AppColor.primaryColor)),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: hexaCodeToColor(AppColor.primaryColor1)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 85),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('G',
                            style: TextStyle(
                              color: hexaCodeToColor(AppColor.primaryColor1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'Login with Google',
                          style: TextStyle(
                              color: hexaCodeToColor(AppColor.primaryColor1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 85),
                child: Row(
                  children: [
                    Text(
                      'Do not have account!',
                      style: TextStyle(
                          color: hexaCodeToColor(AppColor.primaryColor30)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: hexaCodeToColor(AppColor.primaryColor),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset('assets/images/angkor 1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
