import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/model/model.menu.dart';
import 'package:tresastronautas/src/pages/page_home/page_home.dart';
import 'package:tresastronautas/src/pages/page_matriz/page_matriz.dart';

class PageGetCtrl extends GetxController {
  // ---- const values ------
  final List<MenuModel> itemMenu = [
    MenuModel(
      title: 'Home',
      icon: Icons.home,
    ),
    MenuModel(
      title: 'Matriz',
      icon: Icons.grid_4x4,
    ),
  ];
  final List<Widget> pagesHome = [
    PageHome(),
    PageMatriz(),
  ];

  // --- values states ----

  late PageController pageController = PageController();

  final _idxSelected = 0.obs;
  get idxSelected => _idxSelected.value;
  set idxSelected(value) => _idxSelected.value = value;

  // --- methods

  @override
  void onInit() {
    pageController = PageController(
      initialPage: 0,
    );
    super.onInit();
  }

  changePages(int vl) {
    idxSelected = vl;
    pageController.animateToPage(
      vl,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }
}
