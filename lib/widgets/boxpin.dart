import 'package:flutter/material.dart';

class BoxPin extends StatelessWidget {
  const BoxPin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        width: 45,
        // margin: const EdgeInsets.only(right: 10),
        decoration: const BoxDecoration(
            color: Color.fromARGB(72, 0, 115, 255),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: const TextField(
          cursorColor: Color.fromARGB(255, 0, 115, 255),
          style: TextStyle(
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
