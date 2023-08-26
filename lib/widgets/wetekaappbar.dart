import '../index.dart';

PreferredSizeWidget wetekaAppBar(
  BuildContext context, {
  bool? isSearch = true,
  bool? isImg = true,
  String? title,
  bool? isIcon = true,
  bool? isScan = true,
  bool? isMenu = false,
  bool? isBell = true,
  bool? isExpanded = true,
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
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  isMenu!
                      ? Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/images/align-left.png'),
                          ),
                        )
                      : Text(''),
                ],
              )
            : Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 2, 28, 60),
                  ),
                ),
              ),
    actions: [
      isSearch! ? Image.asset('assets/images/search.png') : Container(),
      isBell!
          ? Image.asset('assets/images/bell.png')
          : isExpanded!
              ? Image.asset('assets/images/expand.png')
              : Container(),
      isScan! ? Image.asset('assets/images/scan.png') : Container(),
    ],
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    elevation: 0,
  );
}
