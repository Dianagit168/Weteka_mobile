import '../../index.dart';
import '../customtext.dart';

class CoverAndProfile extends StatelessWidget {
  const CoverAndProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 255,
          child: Column(
            children: [
              Image.asset(
                'assets/images/weteka_port.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      title: 'Weteka Official',
                      isFontSize: false,
                      fontSize: 17,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Image.asset(
                      'assets/images/verified.png',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 120,
          left: 20,
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
                  'assets/images/Group 42.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
