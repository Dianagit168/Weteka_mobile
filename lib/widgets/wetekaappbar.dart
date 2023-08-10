import '../index.dart';

PreferredSizeWidget wetekaAppBar(BuildContext context,
    {bool? isSearch = true}) {
  return AppBar(
    flexibleSpace: Container(
      margin: const EdgeInsets.only(right: 240, top: 10),
      child: Image.asset(
        'assets/images/weteka logo.png',
      ),
    ),
    actions: [
      isSearch! ? Image.asset('assets/images/search.png') : Container(),
      Image.asset('assets/images/bell.png'),
      Image.asset('assets/images/scan.png'),
    ],
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    elevation: 0,
  );
}
