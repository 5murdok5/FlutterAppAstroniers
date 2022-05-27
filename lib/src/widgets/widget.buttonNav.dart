import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tresastronautas/src/Getx/helpers/helpers.const.dart';
import 'package:tresastronautas/src/model/model.menu.dart';

class ButtonNavBar extends StatelessWidget {
  final List<MenuModel> items;
  final int indexSelected;
  final Function(int vl) currentind;
  const ButtonNavBar({
    Key? key,
    required this.items,
    required this.indexSelected,
    required this.currentind,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          items.length,
          (index) => itemMenu(items[index].title ?? 's/t', items[index].icon!,
              isSelected: indexSelected == index,
              onTap: () => currentind(index)),
        ),
      ),
    );
  }

  Widget itemMenu(String titlemenu, IconData icon,
      {bool isSelected = false, Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          isSelected
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    titlemenu,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
