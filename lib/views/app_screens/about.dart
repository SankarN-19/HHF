import 'package:legalease/consts/consts.dart';

class aboutUs extends StatelessWidget {
  const aboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              (context.screenHeight * 0.08).heightBox,
              "About Us".text.fontFamily(bold).size(40).black.make(),
              (context.screenHeight * 0.04).heightBox,
              detail1.text.fontFamily(regular).size(20).color(textGrey).make(),
              (context.screenHeight * 0.01).heightBox,
              detail1.text.fontFamily(regular).size(20).color(textGrey).make(),
            ],
          ),
        ),
      ),
    );
  }
}
