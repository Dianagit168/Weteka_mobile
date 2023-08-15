import '../index.dart';
import 'customtext.dart';

class Information extends StatelessWidget {
  const Information({
    Key? key,
    this.img,
    this.tit,
    this.boldTit,
    this.tempTit = true,
  }) : super(key: key);
  final String? img;
  final String? tit;
  final String? boldTit;
  final bool? tempTit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Image.asset(img!),
          const SizedBox(
            width: 10,
          ),
          tempTit!
              ? Text(tit!)
              : CustomText(
                  title: boldTit!,
                ),
          const SizedBox(
            width: 3,
          ),
          tempTit!
              ? CustomText(
                  title: boldTit!,
                )
              : Text(tit!),
        ],
      ),
    );
  }
}
