import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/widgets/widget.cart.dart';
import 'package:tresastronautas/src/widgets/widget.titles.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> chips;
  const CategoriesWidget({Key? key, required this.chips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: paddingHzApp),
          scrollDirection: Axis.horizontal,
          itemCount: chips.length,
          itemBuilder: (context, index) => itemCategory(
            chips[index],
          ),
        ),
      ),
    );
  }

  Widget itemCategory(value) {
    return CardContainer(
      margin: const EdgeInsets.only(
        right: 7,
      ),
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      radius: 14,
      child: Center(
        child: TextApp(
          text: value,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
