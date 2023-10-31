import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 750,
            width: double.infinity,
            child: PageView(
              controller: _controller,
              children: [
                getStarted1(context),
                getStarted2(context),
                getStarted3(context),
              ],
            ),
          ),
          const Spacer(),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const SlideEffect(
                spacing: 10.0,
                radius: 16.0,
                dotWidth: 13.0,
                dotHeight: 13.0,
                paintStyle: PaintingStyle.fill,
                dotColor: Color.fromARGB(255, 230, 230, 230),
                activeDotColor: Color.fromARGB(255, 0, 115, 255)),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

Widget getStarted1(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Group 5.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: hexaCodeToColor(AppColor.primaryColor)),
              ),
            ),
            const Text(
              'We’re happy to see you here!',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(184, 136, 182, 238)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6, left: 10, right: 10),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Enim massa ut pellentesque tincidunt laoreet quis quam. Rhoncus cursus neque lectus at.',
                strutStyle: StrutStyle(height: 1.5),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(95, 0, 115, 255)),
              ),
            ),
            const Spacer(),
            ElevatedButtonCust(
              tit: 'Get Started',
              w: 365,
              h: 45,
              sizfo: 17,
              circleBut: 16,
              onNavigator: () {},
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}

Widget getStarted2(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/roket.png'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Who we are',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 115, 255)),
              ),
            ),
            const Text(
              'Building the tools for our next generation!',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(184, 136, 182, 238)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6, left: 10, right: 10),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Enim massa ut pellentesque tincidunt laoreet quis quam. Rhoncus cursus neque lectus at.',
                strutStyle: StrutStyle(height: 1.5),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(95, 0, 115, 255)),
              ),
            ),
            const Spacer(),
            ElevatedButtonCust(
              tit: 'Next',
              w: 365,
              h: 45,
              sizfo: 17,
              circleBut: 16,
              onNavigator: () {},
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}

Widget getStarted3(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 8, top: 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Vectary texture.png'),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Choose',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 115, 255)),
              ),
            ),
            const Text(
              'Your language!',
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(184, 136, 182, 238)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6, left: 10, right: 10),
              child: Text(
                'What language would you like to see?',
                strutStyle: StrutStyle(height: 1.5),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(95, 0, 115, 255)),
              ),
            ),
            const Spacer(),
            ElevatedButtonCust(
              tit: 'English',
              w: 350,
              h: 45,
              sizfo: 17,
              circleBut: 16,
              onNavigator: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}
