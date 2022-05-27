import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/widgets/widget.buttonIcons.dart';
import 'package:tresastronautas/src/widgets/widget.titles.dart';
import 'package:flutter/material.dart';

Widget header() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: paddingHzApp,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        titles('Favorites'),
        btnIcon(
          Icons.add,
        ),
      ],
    ),
  );
}

Widget headerList() {
  return Padding(
    padding: EdgeInsets.only(
      left: paddingHzApp,
      right: paddingHzApp,
      bottom: 30,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        subTitles('Happy Hours'),
        btnIcon(Icons.delete),
      ],
    ),
  );
}

Widget appbarHeader() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: paddingHzApp,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Transform.translate(
          offset: const Offset(-10, 0),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/NASA_logo.svg/2449px-NASA_logo.svg.png',
            height: 120,
            width: 120,
          ),
        ),
        const Spacer(),
        btnIcon(
          Icons.notifications,
        ),
        const SizedBox(
          width: 5,
        ),
        btnIcon(
          Icons.settings,
        ),
      ],
    ),
  );
}
