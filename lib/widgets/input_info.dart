// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class InputInformation extends StatelessWidget {
  const InputInformation({
    Key? key,
    this.tit,
    this.preIcon,
    this.sufIcon,
    required this.isSuf,
    this.titAlign,
  }) : super(key: key);
  final String? tit;
  final Icon? preIcon;
  final Icon? sufIcon;
  final bool isSuf;
  final double? titAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: titAlign!),
          child: Text(
            tit!,
            style: const TextStyle(
              color: Color.fromARGB(184, 136, 182, 238),
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 45,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 0, 115, 255)),
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: TextField(
            cursorColor: const Color.fromARGB(255, 0, 115, 255),
            style: const TextStyle(
              fontSize: 17,
            ),
            textAlign: TextAlign.start,
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: preIcon!,
                suffixIcon: isSuf ? sufIcon! : null),
          ),
        ),
      ],
    );
  }
}
