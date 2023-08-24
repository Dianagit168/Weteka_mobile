import 'package:weteka/index.dart';

class ListTileCustom extends StatelessWidget {
  const ListTileCustom({
    Key? key,
    this.img,
    this.tit,
    this.subTit,
  }) : super(key: key);
  final String? img;
  final String? tit;
  final String? subTit;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Image.asset(
          img!,
          fit: BoxFit.cover,
        ),
      ),
      title: CustomText(title: tit!),
      subtitle: Text(
        subTit!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 11,
          color: Color.fromARGB(118, 2, 28, 60),
        ),
      ),
    );
  }
}
