import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/model/model.matriz.dart';

class MatrizController extends GetxController {
  final _numMatriz = 0.obs;
  get numMatriz => _numMatriz.value;
  set numMatriz(value) => _numMatriz.value = value;

  final Rx<MatrizModel> _currentMatriz = MatrizModel().obs;
  MatrizModel get currentMatriz => _currentMatriz.value;
  set currentMatriz(MatrizModel value) => _currentMatriz.value = value;

  addMatriz() {
    numMatriz++;
  }

  removeMatriz() {
    if (numMatriz > 0) {
      numMatriz++;
    }
  }
}
