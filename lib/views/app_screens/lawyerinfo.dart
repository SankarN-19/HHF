import 'package:legalease/consts/consts.dart';
import 'package:legalease/views/widgets_common/search.dart';

class LawyerProfile extends StatelessWidget {
  const LawyerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // (context.screenHeight * 0.05).heightBox,
              // searchBar(hint: "search for a lawyer"),
              // Container(
              //   width: double.infinity,
              //   height: 40,
              //   color: Colors.amberAccent,
              // ),
              (context.screenHeight * 0.04).heightBox,
              Image.asset(profdat),
              5.heightBox,
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        "Dr. Bibhuti Bhusan"
                            .text
                            .fontFamily(bold)
                            .size(20)
                            .black
                            .make(),
                        (context.screenWidth * 0.27).widthBox,
                        "4.6".text.fontFamily(bold).size(20).black.make(),
                        const Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    (context.screenHeight * 0.01).heightBox,
                    "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatu Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatu \n\nQuis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatu Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatu"
                        .text
                        .fontFamily(regular)
                        .size(10)
                        .color(textGrey)
                        .make(),
                    (context.screenHeight * 0.01).heightBox,
                    "Qualifications".text.fontFamily(bold).size(17).make(),
                    (context.screenHeight * 0.005).heightBox,
                    "Just a bono lawyer Just a bono lawyer Just a bono lawyer"
                        .text
                        .fontFamily(regular)
                        .size(10)
                        .color(textGrey)
                        .make(),
                    (context.screenHeight * 0.01).heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Specilaisatons"
                                .text
                                .fontFamily(bold)
                                .size(15)
                                .black
                                .make(),
                            (context.screenHeight * 0.001).heightBox,
                            "Just a bono lawyer"
                                .text
                                .fontFamily(regular)
                                .size(10)
                                .color(textGrey)
                                .make(),
                          ],
                        ),
                        (context.screenWidth * 0.3).widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Experience"
                                .text
                                .fontFamily(bold)
                                .size(15)
                                .black
                                .make(),
                            (context.screenHeight * 0.001).heightBox,
                            "10+ years"
                                .text
                                .fontFamily(regular)
                                .size(10)
                                .color(textGrey)
                                .make(),
                          ],
                        ),
                      ],
                    ),
                    (context.screenHeight * 0.01).heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Availability"
                                .text
                                .fontFamily(bold)
                                .size(15)
                                .black
                                .make(),
                            (context.screenHeight * 0.001).heightBox,
                            "5-10 pm"
                                .text
                                .fontFamily(regular)
                                .size(10)
                                .color(textGrey)
                                .make(),
                          ],
                        ),
                        (context.screenWidth * 0.27).widthBox,
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonPurple,
                          ),
                          child: "Book Appointment"
                              .text
                              .fontFamily(bold)
                              .white
                              .make(),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Contact info"
                            .text
                            .fontFamily(bold)
                            .size(17)
                            .black
                            .make(),
                        (context.screenHeight * 0.001).heightBox,
                        "xyz@gmail.com"
                            .text
                            .fontFamily(regular)
                            .size(15)
                            .color(textGrey)
                            .make(),
                        (context.screenHeight * 0.0001).heightBox,
                        "+917983425671"
                            .text
                            .fontFamily(regular)
                            .size(15)
                            .color(textGrey)
                            .make(),
                      ],
                    ),
                    (context.screenHeight * 0.03).heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Reviews".text.fontFamily(bold).size(20).black.make(),
                        (context.screenHeight * 0.01).heightBox,
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontFamily: regular,
                              color: textGrey,
                            ),
                            hintText: "Add a Comment",
                            isDense: true,
                            fillColor: boxcolor,
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: boxcolor,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
