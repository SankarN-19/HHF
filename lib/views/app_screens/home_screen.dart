import 'package:legalease/consts/consts.dart';
import 'package:legalease/views/app_screens/lawyerinfo.dart';
import 'package:legalease/views/widgets_common/profiletile.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: "Welcome".text.fontFamily(bold).size(30.0).white.make(),
        backgroundColor: buttonPurple,
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
          ],
        ),
      ),
      body: Container(
          width: screenWidth,
          height: screenHeight,
          color: const Color(0xfff5f5f5),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 13.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                35.heightBox,

                Container(
                  width: double.infinity,
                  height: 36.0,
                  color: Colors.amberAccent,
                ),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    'Categories'.text.fontFamily(bold).size(20.0).black.make(),
                    10.widthBox,
                    Container(
                      height: screenHeight * 0.001,
                      width: screenWidth * 0.6,
                      decoration: const BoxDecoration(
                        color: Color(0xffa4a4a4),
                      ),
                    ),
                  ],
                ),
                15.heightBox,
                Container(
                  height: 23.0,
                  width: screenWidth * 0.97,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      5.widthBox,
                      Container(
                          width: 86.0,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                            color: boxcolor,
                          ),
                          child: Center(
                            child: 'Domestic'
                                .text
                                .fontFamily(semibold)
                                .black
                                .make(),
                          )),
                      5.widthBox,
                      Container(
                        width: 64.0,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                          color: boxcolor,
                        ),
                        child: Center(
                          child: 'Cyber'.text.fontFamily(semibold).black.make(),
                        ),
                      ),
                      5.widthBox,
                      Container(
                        width: 80.0,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                          color: boxcolor,
                        ),
                        child: Center(
                          child:
                              'Criminal'.text.fontFamily(semibold).black.make(),
                        ),
                      ),
                      5.widthBox,
                      Container(
                        width: 94.0,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                          color: boxcolor,
                        ),
                        child: Center(
                          child: 'Real Estate'
                              .text
                              .fontFamily(semibold)
                              .black
                              .make(),
                        ),
                      ),
                      5.widthBox,
                    ],
                  ),
                ),
                30.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    'Connections'.text.fontFamily(bold).size(20.0).black.make(),
                    10.widthBox,
                    Container(
                      height: screenHeight * 0.001,
                      width: screenWidth * 0.55,
                      decoration: const BoxDecoration(
                        color: Color(0xffa4a4a4),
                      ),
                    ),
                  ],
                ),
                10.heightBox,
                Row(
                  children: [
                    Container(
                      width: 63.0,
                      height: 83.0,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(74, 114, 255, 1),
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                            fit: BoxFit.none,
                            image: AssetImage(icconnect1),
                            alignment: Alignment.topCenter),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: 'Bibhuti Bhusan'
                          .text
                          .fontFamily(regular)
                          .white
                          .make(),
                    ),
                    10.widthBox,
                    Container(
                      width: 63.0,
                      height: 83.0,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(74, 114, 255, 1),
                          borderRadius: BorderRadius.circular(6),
                          image: const DecorationImage(
                              fit: BoxFit.none,
                              image: AssetImage(icconnect2),
                              alignment: Alignment.topCenter)),
                      alignment: Alignment.bottomCenter,
                      child:
                          'Anjali Sharma'.text.fontFamily(regular).white.make(),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    'Top Rated'.text.fontFamily(bold).size(20.0).black.make(),
                    10.widthBox,
                    Container(
                      height: screenHeight * 0.001,
                      width: screenWidth * 0.6,
                      decoration: const BoxDecoration(
                        color: Color(0xffa4a4a4),
                      ),
                    ),
                  ],
                ),
                30.heightBox,
                // ListView(
                //   children: [
                //     Container(
                //       height: screenHeight * 0.1,
                //       width: screenWidth * 0.9,
                //       decoration: BoxDecoration(
                //         border: Border.all(color: Colors.black),
                //       ),
                //     )
                //   ],
                // )

                profileTile(
                  img: icperson1,
                  title: "Dr. Bibhuti Bhusan",
                  detail: "phd. from xyz, jhds kdhslk kjhg ...",
                  num: 50,
                  star: 4.6,
                ).onTap(() {
                  Get.to(() => const LawyerProfile());
                }),
                profileTile(
                  img: icperson2,
                  title: "Dr. Bibhuti Bhusan",
                  detail: "phd. from xyz, jhds kdhslk kjhg ...",
                  num: 50,
                  star: 4.6,
                ).onTap(() {
                  Get.to(() => const LawyerProfile());
                }),
                profileTile(
                  img: icperson3,
                  title: "Dr. Bibhuti Bhusan",
                  detail: "phd. from xyz, jhds kdhslk kjhg ...",
                  num: 50,
                  star: 4.6,
                ).onTap(() {
                  Get.to(() => const LawyerProfile());
                }),
              ],
            ),
          )),
    );
  }
}
