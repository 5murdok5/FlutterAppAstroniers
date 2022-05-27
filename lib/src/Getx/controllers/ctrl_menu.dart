import 'package:get/get.dart';

class MenuController extends GetxController {
  final _obj = 0.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  final _indexSelected = 0.obs;
  get indexSelected => _indexSelected.value;
  set indexSelected(value) => _indexSelected.value = value;
}
