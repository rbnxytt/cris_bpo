import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.categoryTileColor,
    this.onHover,
    required this.tileName,
    this.icon,
  }) : super(key: key);

  final Color categoryTileColor;
  final void Function(bool)? onHover;
  final String tileName;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      onHover: onHover,
      child: ListTile(
        tileColor: categoryTileColor,
        leading: icon,
        title: Text(
          MediaQuery.of(context).size.width > 1200 ? tileName : "",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
