import 'dart:math';

import 'package:get/get.dart';
import 'package:tresastronautas/src/model/model.matriz.dart';

class MatrizController extends GetxController {
  final _matrizA = 1.obs;
  get matrizA => _matrizA.value;
  set matrizA(value) => _matrizA.value = value;

  final _matrizb = 1.obs;
  get matrizb => _matrizb.value;
  set matrizb(value) => _matrizb.value = value;

  final Rx<MatrizModel> _currentMatriz = MatrizModel().obs;
  MatrizModel get currentMatriz => _currentMatriz.value;
  set currentMatriz(MatrizModel value) => _currentMatriz.value = value;

  final RxList<List<ItemMatrizModel>> _listMatriz =
      <List<ItemMatrizModel>>[].obs;
  List<List<ItemMatrizModel>> get listMatriz => _listMatriz;
  set listMatriz(List<List<ItemMatrizModel>> value) =>
      _listMatriz.value = value;

  addMatriz(bool isRow) {
    if (isRow) {
      matrizA++;
    } else {
      matrizb++;
    }
    update();
  }

  removeMatriz(bool isRow) {
    if (isRow) {
      if (matrizA > 1) {
        matrizA--;
      }
    } else {
      if (matrizb > 1) {
        matrizb--;
      }
    }
    update();
  }

  generateRamdomIslas() {
    List<List<ItemMatrizModel>> matrixdt = <List<ItemMatrizModel>>[];

    for (var i = 0; i < matrizA; i++) {
      List<ItemMatrizModel> list = <ItemMatrizModel>[];
      for (var j = 0; j < matrizb; j++) {
        list.add(ItemMatrizModel(
          idIsla: '$i-$j',
          isWater: false,
        ));
      }
      matrixdt.add(list);
    }
    listMatriz = matrixdt;
  }

  generateRamdomNum(vlMax) {
    Random random = Random();
    return random.nextInt(vlMax);
  }
}
