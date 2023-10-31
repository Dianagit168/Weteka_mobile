import 'package:lucide_icons/lucide_icons.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';
import 'package:weteka/widgets/input_info.dart';

import '../../index.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 30),
                child: Image.asset('assets/images/weteka logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InputInformation(
                  tit: 'Username',
                  titAlign: 270,
                  preIcon: Icon(LucideIcons.user,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  sufIcon: const Icon(Icons.remove_red_eye_sharp),
                  isSuf: false,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InputInformation(
                  tit: 'Email',
                  titAlign: 300,
                  preIcon: Icon(
                    LucideIcons.mail,
                    color: hexaCodeToColor(AppColor.primaryColor60),
                  ),
                  sufIcon: const Icon(Icons.remove_red_eye_sharp),
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
                  titAlign: 270,
                  preIcon: Icon(LucideIcons.lock,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  sufIcon: Icon(LucideIcons.eye,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  isSuf: true,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: InputInformation(
                  tit: 'Confirm password',
                  titAlign: 220,
                  preIcon: Icon(LucideIcons.lock,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  sufIcon: Icon(LucideIcons.eye,
                      color: hexaCodeToColor(AppColor.primaryColor60)),
                  isSuf: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButtonCust(
                  tit: 'Sign up',
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
              //const Divider(height: 1),
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
                  // margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: hexaCodeToColor(AppColor.primaryColor60)),
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
                              color: hexaCodeToColor(AppColor.primaryColor60),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'Register with Google',
                          style: TextStyle(
                              color: hexaCodeToColor(AppColor.primaryColor60)),
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
                      'Already have account!',
                      style: TextStyle(
                          color: hexaCodeToColor(AppColor.primaryColor30)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: hexaCodeToColor(AppColor.primaryColor),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
