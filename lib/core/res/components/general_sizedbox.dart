import 'package:flutter/material.dart';

class SizedBoxComponents extends StatelessWidget {
  const SizedBoxComponents({this.heightbox,this.widthBox,super.key});
  final double? heightbox;
  final double? widthBox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightbox ?? 0.0,
      width: widthBox ?? 0.0,
    );
  }
}
