import '../../index.dart';
import '../customtext.dart';

class Video extends StatelessWidget {
  const Video({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: Column(
            children: [
              Image.asset(
                'assets/images/yt.png',
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      title: 'What is Weteka? Is it help our new generations?',
                      isFontSize: false,
                      fontSize: 17,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text('1.2K views'),
                        Text(' - 2 month ago'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(155, 118, 142, 171),
          ),
          child: Image.asset(
            'assets/images/play.png',
          ),
        )
      ],
    );
  }
}
