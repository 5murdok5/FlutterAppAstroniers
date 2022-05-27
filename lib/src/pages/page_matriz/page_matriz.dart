import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/controllers/ctrl_matriz.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/pages/page_matriz/matriz_comp/matriz.generator.dart';
import 'package:tresastronautas/src/widgets/widget.buttonIcons.dart';
import 'package:tresastronautas/src/widgets/widget.cart.dart';
import 'package:tresastronautas/src/widgets/widget.titles.dart';

class PageMatriz extends StatelessWidget {
  PageMatriz({Key? key}) : super(key: key);
  final MatrizController _mtCtrl = Get.put(MatrizController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHzApp,
          vertical: paddingVr,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            titles('Genera tus Islas !'),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: TextApp(
                text: 'Dime el tamaño de tu mundo?',
                fontWeight: FontWeight.w400,
              ),
            ),
            selectScale(),
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
                bottom: 10,
              ),
              child: TextApp(
                text: 'Este es tu nuevo Mundo!,',
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 15,
              ),
              child: TextApp(
                text: 'Si quieres cambiar de espacio, pulsalo',
                fontWeight: FontWeight.w400,
              ),
            ),
            MatrizGenerator(),
          ],
        ),
      ),
    );
  }

  Widget selectScale() {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => containerNum(
              _mtCtrl.matrizb,
              isRow: false,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: TextApp(
              text: 'X',
              size: 26,
            ),
          ),
          Obx(
            () => containerNum(
              _mtCtrl.matrizA,
              isRow: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget containerNum(int num, {bool isRow = false}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        btnIcon(
          Icons.remove,
          onTap: () => _mtCtrl.removeMatriz(isRow),
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
        ),
        CardContainer(
          color: Colors.amber,
          width: 45,
          height: 45,
          radius: 10,
          padding: const EdgeInsets.only(top: 4),
          child: Center(
            child: TextApp(
              text: num.toString(),
              size: 26,
            ),
          ),
        ),
        btnIcon(
          Icons.add,
          onTap: () => _mtCtrl.addMatriz(isRow),
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
        ),
      ],
    );
  }
}
