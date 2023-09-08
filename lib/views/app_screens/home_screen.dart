import 'dart:ui';

import 'package:legalease/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xfff5f5f5),
        child: Stack(
          children: [
            Positioned(
              left: 30.0,
              top: 430.0,
              child: Container(
                width: 344.0,
                height: 730.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 16.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          margin:
                              const EdgeInsets.fromLTRB(8.0, 7.0, 13.0, 8.0),
                          width: double.infinity,
                          height: 110.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: buttonPurple),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 2.5,
                                sigmaY: 2.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
