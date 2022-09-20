import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({Key? key, this.text, this.color , this.onTap}) : super(key: key);

  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        color:color,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
