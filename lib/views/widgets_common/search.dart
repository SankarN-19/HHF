import 'package:legalease/consts/consts.dart';

// ignore: non_constant_identifier_names
Widget searchBar({String? hint, controller}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      hintStyle: const TextStyle(
        fontFamily: regular,
        color: textGrey,
      ),
      icon: const Icon(
        Icons.search,
        color: Colors.black,
      ),
      hintText: hint,
      isDense: true,
      fillColor: boxcolor,
      filled: true,
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: boxcolor),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
