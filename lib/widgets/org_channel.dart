import 'package:weteka/index.dart';
import 'package:weteka/presentation/screen/utils/app_colors.dart';

class OrgChannel extends StatelessWidget {
  const OrgChannel({Key? key, this.orgChannel, this.index}) : super(key: key);
  final List<dynamic>? orgChannel;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        orgChannel![index!]["organization"]["logo"],
                      ),
                    )),
              ),
              if (orgChannel![index!]["organization"]["isVerify"] == true)
                Positioned(
                  top: 23,
                  left: 20,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      LucideIcons.badgeCheck,
                      color: Colors.blue,
                      size: 12,
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              CustomText(
                title: orgChannel![index!]["organization"]["name"],
                isFontSize: false,
                color: hexaCodeToColor(AppColor.blublack),
                fontSize: 12,
              ),
              const Text(
                '1K followers',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 9,
                    color: Color.fromARGB(67, 2, 28, 60)),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 27,
            child: TextButton(
              onPressed: () {},
              child: CustomText(
                title: 'Follow',
                isFontSize: false,
                color: hexaCodeToColor(AppColor.primaryColor),
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
