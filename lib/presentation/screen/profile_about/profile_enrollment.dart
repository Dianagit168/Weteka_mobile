import 'package:weteka/index.dart';

class ProfileEnrollment extends StatelessWidget {
  const ProfileEnrollment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Course(
        isTit: false,
      ),
    );
  }
}
