// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemCardModel {
  String title;
  String urtImg;
  bool? isfav;
  ItemCardModel({
    required this.title,
    required this.urtImg,
    this.isfav,
  });
}
