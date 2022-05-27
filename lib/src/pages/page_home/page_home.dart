import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/controllers/ctrl_home.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/pages/page_home/home_comp/home.chips.dart';
import 'package:tresastronautas/src/pages/page_home/home_comp/home.headers.dart';
import 'package:tresastronautas/src/pages/page_home/home_comp/home.listItems.dart';

class PageHome extends StatelessWidget {
  PageHome({Key? key}) : super(key: key);
  final HomeController _hmCtrl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbarHeader(),
            header(),
            CategoriesWidget(
              chips: _hmCtrl.listCategoryes,
            ),
            headerList(),
            ItemsList(),
          ],
        ),
      ),
    );
  }
}
