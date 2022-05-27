import 'package:flutter/material.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/widgets/widget.titles.dart';

class PageMatriz extends StatelessWidget {
  const PageMatriz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHzApp,
          vertical: paddingVr,
        ),
        child: Column(
          children: [
            titles('Genera tus Islas !'),
          ],
        ),
      ),
    );
  }
}
