import 'dart:math';

import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/services/service.apiConexion.dart';
import 'package:tresastronautas/src/model/model.gyphy.dart';
import 'package:tresastronautas/src/model/model.itemCard.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  List<String> listCategoryes = [
    'All',
    'Happy Hours',
    'Drinks',
    'Beer',
  ];
  final GetDataProvider _apiProv = GetDataProvider();
  // List<ItemCardModel> cards = [
  //   ItemCardModel(
  //     title: 'Broken Shaker at Freeghand Miami',
  //     urtImg:
  //         'https://www.masaya-experience.com/quito/wp-content/uploads/2019/02/DrinkQUITO3_Vistahermosa-1.jpg',
  //   ),
  //   ItemCardModel(
  //     title: 'Broken Shaker at Freeghand Miami',
  //     urtImg:
  //         'https://www.masaya-experience.com/quito/wp-content/uploads/2019/02/DrinkQUITO3_Vistahermosa-1.jpg',
  //   ),
  //   ItemCardModel(
  //     title: 'Broken Shaker at Freeghand Miami',
  //     urtImg:
  //         'https://www.masaya-experience.com/quito/wp-content/uploads/2019/02/DrinkQUITO3_Vistahermosa-1.jpg',
  //   ),
  //   ItemCardModel(
  //     title: 'Broken Shaker at Freeghand Miami',
  //     urtImg:
  //         'https://www.masaya-experience.com/quito/wp-content/uploads/2019/02/DrinkQUITO3_Vistahermosa-1.jpg',
  //   ),
  // ];

  final RxList<ItemCardModel> _listItems = <ItemCardModel>[].obs;
  List<ItemCardModel> get listItems => _listItems;
  set listItems(List<ItemCardModel> value) => _listItems.value = value;

  @override
  void onInit() {
    _apiProv.getItems().then((response) {
      final dt = response.body;
      final GiphyModel dtPr = GiphyModel.fromJson(dt);
      final map = dtPr.data!
          .map(
            (e) => ItemCardModel(
                title: e.title ?? 'S/t',
                urtImg: e.images!.original!.url ?? '',
                isfav: false),
          )
          .toList();
      listItems = map;
    }, onError: (err) {
      print(err);
    });
    super.onInit();
  }
}
