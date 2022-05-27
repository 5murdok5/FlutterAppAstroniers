import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextApp extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? fontWeight;
  const TextApp(
      {Key? key,
      required this.text,
      this.size = 16,
      this.fontWeight = FontWeight.w700})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          height: 1.2,
        ),
      ),
    );
  }
}

Widget titles(String text) {
  return TextApp(
    text: text,
    size: 27,
    fontWeight: FontWeight.w800,
  );
}

Widget subTitles(String text) {
  return TextApp(
    text: text,
    size: 21,
    fontWeight: FontWeight.w700,
  );
}
