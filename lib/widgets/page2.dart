import 'package:flutter/material.dart';

import 'package:weteka/widgets/button.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
