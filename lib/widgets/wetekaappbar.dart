import '../index.dart';

PreferredSizeWidget wetekaAppBar(
  BuildContext context,
) {
  return AppBar(
    flexibleSpace: Container(
      margin: const EdgeInsets.only(right: 240, top: 10),
      child: Image.asset(
        'assets/images/weteka logo.png',
      ),
    ),
    actions: [
      Image.asset('assets/images/bell.png'),
      Image.asset('assets/images/scan.png'),
    ],
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    elevation: 0,
  );
}
