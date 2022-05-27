import 'package:flutter/material.dart';
import 'package:tresastronautas/src/widgets/widget.cart.dart';

Widget btnIcon(IconData iconData, {Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: CardContainer(
      blurshadow: 8.0,
      showShadow: true,
      radius: 100,
      padding: const EdgeInsets.all(7),
      child: Center(
        child: Icon(
          iconData,
          size: 27,
          color: Colors.grey[700],
        ),
      ),
    ),
  );
}
