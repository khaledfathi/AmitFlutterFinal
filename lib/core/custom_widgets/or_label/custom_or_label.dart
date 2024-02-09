import 'package:flutter/material.dart';

class CustomOrLabel extends StatelessWidget {
  final EdgeInsets? margin;
  final String? text;
  final double? dividerWidth;
  final Color? dividerColor;
  final Color? textColor;
  const CustomOrLabel(
      {super.key,
      this.margin,
      this.text,
      this.dividerWidth,
      this.dividerColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 30,
      child: Container(
        margin: margin,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _divider(),
            FittedBox(
              child: Text( text ?? 'Or do something else',
                style: TextStyle(fontSize: 14, color: textColor ?? Colors.black),
              ),
            ),
            _divider(),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return SizedBox(
        width: dividerWidth ?? 100,
        child: Divider(
          indent: 20,
          endIndent: 10,
          thickness:1,
          color: dividerColor ?? Colors.grey,
        ));
  }
}
