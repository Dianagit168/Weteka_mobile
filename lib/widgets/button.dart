import 'package:flutter/material.dart';

class ElevatedButtonCust extends StatelessWidget {
  const ElevatedButtonCust({
    Key? key,
    this.tit,
    this.sizfo,
    this.onNavigator,
    this.h,
    this.w,
    this.circleBut,
  }) : super(key: key);
  final String? tit;
  final double? sizfo;
  final double? h;
  final double? w;
  final double? circleBut;
  final void Function()? onNavigator;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(w!, h!),
        primary: const Color.fromARGB(255, 0, 102, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circleBut!),
        ),
      ),
      onPressed: onNavigator,
      child: Text(
        tit!,
        style: TextStyle(fontSize: sizfo),
      ),
    );
  }
}
