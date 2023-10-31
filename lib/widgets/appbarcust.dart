import '../index.dart';

PreferredSizeWidget appBar(
  BuildContext context,
) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Color.fromARGB(184, 136, 182, 238),
      ),
      onPressed: () {
        //Navigator.of(context).pop();
      },
    ),
    backgroundColor: Colors.white10,
    elevation: 0,
  );
}
