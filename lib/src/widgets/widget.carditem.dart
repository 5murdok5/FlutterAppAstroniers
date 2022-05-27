import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tresastronautas/src/model/model.itemCard.dart';
import 'package:tresastronautas/src/widgets/widget.buttonIcons.dart';
import 'package:tresastronautas/src/widgets/widget.cart.dart';
import 'package:tresastronautas/src/widgets/widget.titles.dart';

class CardItem extends StatelessWidget {
  final ItemCardModel item;
  const CardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(9),
      showShadow: true,
      colorShadow: const Color.fromARGB(15, 0, 0, 0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Row(
            children: [
              imgContainer(),
              titleCard(),
            ],
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.more_horiz_rounded,
            ),
          ),
        ],
      ),
    );
  }

  Widget titleCard() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 17,
        ),
        child: TextApp(
          text: item.title,
          size: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget imgContainer() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 95,
          width: 120,
          margin: const EdgeInsets.only(bottom: 18),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                item.urtImg,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
        btnIcon(
          Icons.favorite,
        ),
      ],
    );
  }
}
