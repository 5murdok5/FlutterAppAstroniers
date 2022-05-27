import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/controllers/ctrl_page.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/widgets/widget.buttonNav.dart';

class PagesContainer extends StatelessWidget {
  PagesContainer({Key? key}) : super(key: key);
  final PageGetCtrl _pgctrl = Get.put(PageGetCtrl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBack,
      bottomNavigationBar: Obx(
        () => ButtonNavBar(
          items: _pgctrl.itemMenu,
          indexSelected: _pgctrl.idxSelected,
          currentind: _pgctrl.changePages,
        ),
      ),
      body: SafeArea(
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pgctrl.pageController,
          itemBuilder: (context, index) => _pgctrl.pagesHome[index],
        ),
      ),
    );
  }
}
