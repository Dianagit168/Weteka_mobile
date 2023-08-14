import '../index.dart';
import 'customtext.dart';

class CoverProfile extends StatelessWidget {
  const CoverProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Image.asset('assets/images/Rectangle 30.png'),
          ),
        ),
        Positioned(
            top: 120,
            left: 30,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 0, 115, 255),
                  ),
                  child: Image.asset(
                    'assets/images/Ellipse 4.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: CustomText(
                    title: 'Diana',
                  ),
                )
              ],
            ))
      ],
    );
  }
}
