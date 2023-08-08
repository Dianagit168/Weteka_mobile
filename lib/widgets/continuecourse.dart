
import 'package:weteka/index.dart';

class ContinueCourse extends StatelessWidget {
  const ContinueCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Column(
  children: [
  
  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Continue Course',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 28, 60)),
                    ),
                    TextButton(onPressed: () {}, child: const Text('See all'))
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  height: 107,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(24, 0, 115, 255),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 225),
                          // ignore: unnecessary_const
                          child: const Text(
                            'LibreOffice Writer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 2, 28, 60)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 280),
                          child: Image(
                              image: AssetImage('assets/images/Group 25.png')),
                        ),
                        Row(
                          children: const [
                            Image(
                                image: AssetImage(
                                    'assets/images/play-circle.png')),
                            SizedBox(
                              width: 3,
                            ),
                            Text('18 lessons')
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/Progressbar 18.png')),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 107,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(24, 0, 115, 255),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 230),
                          
                          child:  Text(
                            'Learning Scratch',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 2, 28, 60)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 280),
                          child: Image(
                              image: AssetImage('assets/images/Group 25.png')),
                        ),
                        Row(
                          children: const [
                            Image(
                                image: AssetImage(
                                    'assets/images/play-circle.png')),
                            SizedBox(
                              width: 3,
                            ),
                            Text('12 lessons')
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/Progressbar 12.png')),
                        ),
                      ],
                    ),
                  ),
                ),],);
    
  }
}