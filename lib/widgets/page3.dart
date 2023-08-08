import '../index.dart';
import 'chooselang.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const ChooseLanguage(),

              // Container(
              //   color: Colors.purple,
              //   child: const ListTile(
              //     title: Text('Khmer'),
              //     trailing:
              //         Image(image: AssetImage('assets/images/camfla.png')),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
