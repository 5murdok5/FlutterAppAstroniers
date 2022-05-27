// ignore_for_file: public_member_api_docs, sort_constructors_first
class MatrizModel {
  int numIslas;
  int numAgua;
  int matrisA;
  int matrisB;

  MatrizModel({
    this.numIslas = 1,
    this.numAgua = 1,
    this.matrisA = 1,
    this.matrisB = 1,
  });
}

class ItemMatrizModel {
  bool? isWater;
  String? idIsla;

  ItemMatrizModel({
    this.isWater,
    this.idIsla,
  });
}
