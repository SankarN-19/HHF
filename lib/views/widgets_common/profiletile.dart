import 'package:legalease/consts/consts.dart';

Widget profileTile(
    {String? img, String? title, String? detail, int? num, double? star}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: ColoredBox(
      color: Colors.transparent,
      child: Material(
        child: ListTile(
          contentPadding: const EdgeInsets.all(6),
          leading: Image.asset(
            "$img",
            height: 90,
            width: 60,
          ),
          title: title!.text
              .fontFamily(bold)
              .align(TextAlign.justify)
              .size(15)
              .black
              .make(),
          subtitle: RichText(
            text:
                TextSpan(style: const TextStyle(color: Colors.grey), children: [
              TextSpan(
                  text: "$detail\n",
                  style: const TextStyle(
                    color: textGrey,
                    fontFamily: regular,
                  )),
              const WidgetSpan(
                child: SizedBox(
                  height: 30,
                ),
              ),
              TextSpan(
                  text: "$num+ clients\n",
                  style: const TextStyle(
                    color: buttonPurple,
                    fontFamily: bold,
                    fontSize: 13,
                  )),
              const WidgetSpan(
                child: SizedBox(
                  height: 10,
                ),
              ),
              TextSpan(
                text: "$star ",
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: semibold,
                  fontSize: 13,
                ),
              ),
              const WidgetSpan(
                child: Icon(Icons.star, color: Colors.black),
              )
            ]),
          ),
        ),
      ),
    ),
  );
  /*return ListTile(
      contentPadding: const EdgeInsets.all(6),
      leading: Image.asset(icperson1),
      tileColor: Colors.red,
      title: Text("xyz"),
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10), side: BorderSide(width: 5),
          ),
    );*/
}
