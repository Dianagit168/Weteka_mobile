import 'package:weteka/widgets/ratestar.dart';

import '../data/librarydata.dart';
import '../index.dart';

class Library extends StatelessWidget {
  const Library({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const Padding(
                  padding: EdgeInsets.only(
                    right: 325,
                  ),
                  child: Text(
                    'Library ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 28, 60)),
                  ),
                ),
      const SizedBox(
                  height: 10,
                ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: listLibrary.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 167, 
                                  
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 55),
                    child: Image.asset(
                      '${listLibrary[index].img}',
                    ),
                  ),
                  Row(
                  children: const[
                  RateStar(),
                  RateStar(),
                  RateStar(),
                  RateStar(isBlue: false,),
                  RateStar(isBlue: false,),
                  
                  ],),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text(
                      "${listLibrary[index].tit}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color.fromARGB(216, 2, 28, 60)
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 50,
                      top: 7,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                            '${listLibrary[index].subimg}'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "${listLibrary[index].tit2}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Color.fromARGB(
                                      155, 2, 28, 60)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 35),
                              child: Text(
                                "${listLibrary[index].subTit}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9,
                                    color: Color.fromARGB(
                                       67, 2, 28, 60)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
              );
            },
          ),
        ),
      ],
    );
  }
}