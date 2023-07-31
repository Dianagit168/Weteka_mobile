import 'package:flutter/material.dart';

import 'package:weteka/widgets/button.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Group 5.png'),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 115, 255)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'We’re happy to see you here!',
                  style: TextStyle(
                      fontSize: 17, color: Color.fromARGB(184, 0, 115, 255)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Enim massa ut pellentesque tincidunt laoreet quis quam. Rhoncus cursus neque lectus at.',
                  strutStyle: StrutStyle(height: 1.5),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(95, 0, 115, 255)),
                ),
              ),
              ElevatedButtonCust(
                tit: 'Get Started',
                onNavigator: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
