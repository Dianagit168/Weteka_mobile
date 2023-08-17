import '../../index.dart';
import '../button.dart';
import '../customtext.dart';

class UnfollowShortButton extends StatelessWidget {
  const UnfollowShortButton({
    Key? key,
    this.img,
    this.tit,
  }) : super(key: key);
  final String? img;
  final String? tit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              img!,
              fit: BoxFit.cover,
            ),
          ),
          title: CustomText(title: tit!),
          subtitle: const Text(
            '600 Followers',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Color.fromARGB(118, 2, 28, 60)),
          ),
        ),
        ElevatedButtonCust(
          isColor: false,
          tit: 'Unfollow',
          colorTit: const Color.fromARGB(255, 2, 28, 60),
          w: 250,
          h: 40,
          sizfo: 15,
          circleBut: 10,
          color: const Color.fromARGB(255, 245, 245, 245),
          onNavigator: () {},
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Divider(
            color: Color.fromARGB(102, 2, 28, 60),
            height: 4,
          ),
        ),
      ],
    );
  }
}
