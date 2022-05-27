import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color colorShadow;
  final double? width;
  final double? height;
  final double blurshadow;
  final double radius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool showShadow;
  final bool showborder;
  final Color? borderColor;

  const CardContainer(
      {Key? key,
      this.color = Colors.white,
      this.width,
      this.height,
      this.blurshadow = 8.0,
      this.radius = 15,
      required this.child,
      this.showShadow = false,
      this.margin = const EdgeInsets.all(0),
      this.showborder = false,
      this.borderColor = Colors.white,
      this.padding = const EdgeInsets.all(5),
      this.colorShadow = Colors.black12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
            color: !showShadow ? Colors.transparent : colorShadow,
            blurRadius: blurshadow,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: showborder ? borderColor! : Colors.transparent,
          width: 0.7,
        ),
        color: color,
      ),
      child: child,
    );
  }
}
