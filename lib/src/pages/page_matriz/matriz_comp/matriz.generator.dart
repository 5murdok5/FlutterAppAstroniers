import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/controllers/ctrl_matriz.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/widgets/widget.cart.dart';
import 'package:tresastronautas/src/widgets/widget.titles.dart';

class MatrizGenerator extends StatelessWidget {
  MatrizGenerator({Key? key}) : super(key: key);
  final MatrizController _mtCrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => _mtCrl.generateRamdomIslas(),
            child: const CardContainer(
              color: Colors.amber,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              radius: 10,
              child: TextApp(
                text: 'Generar Mundo',
              ),
            ),
          ),
          Obx(
            () => _mtCrl.listMatriz.isEmpty
                ? placeHolder()
                : Table(
                    children: List.generate(
                      _mtCrl.listMatriz.length,
                      (indexa) {
                        return TableRow(
                          children: List.generate(
                            _mtCrl.listMatriz[indexa].length,
                            (indexb) => itemMatris(
                                _mtCrl.listMatriz[indexa][indexb].idIsla ??
                                    's/id'),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget placeHolder() {
    return SizedBox(
      height: height * 0.3,
      width: double.infinity,
      child: const Center(
        child: Text('Aun no hay parcelas'),
      ),
    );
  }

  Widget itemMatris(String text) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 50,
      color: Colors.red,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
