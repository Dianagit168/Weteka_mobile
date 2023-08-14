import '../index.dart';

PreferredSizeWidget wetekaAppBar(
  BuildContext context, {
  bool? isSearch = true,
  bool? isImg = true,
  String? title,
  bool? isIcon = true,
}) {
  return AppBar(
    flexibleSpace: isImg!
        ? Container(
            margin: const EdgeInsets.only(right: 240, top: 10),
            child: Image.asset(
              'assets/images/weteka logo.png',
            ),
          )
        : isIcon!
            ? Padding(
                padding: const EdgeInsets.only(right: 345, top: 5),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 2, 28, 60)),
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
