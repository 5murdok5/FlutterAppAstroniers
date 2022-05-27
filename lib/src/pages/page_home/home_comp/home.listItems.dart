import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/controllers/ctrl_home.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/widgets/widget.carditem.dart';

class ItemsList extends StatelessWidget {
  ItemsList({Key? key}) : super(key: key);
  final HomeController _hmCtrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHzApp),
      child: Column(
        children: List.generate(
          _hmCtrl.cards.length,
          (index) => CardItem(
            item: _hmCtrl.cards[index],
          ),
        ),
      ),
    );
  }
}
