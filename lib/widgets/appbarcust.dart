import 'package:flutter/material.dart';

PreferredSizeWidget appBar(
  BuildContext context,
) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Color.fromARGB(184, 136, 182, 238),
      ),
      onPressed: () {},
    ),
    backgroundColor: Colors.white10,
    elevation: 0,
  );
}
