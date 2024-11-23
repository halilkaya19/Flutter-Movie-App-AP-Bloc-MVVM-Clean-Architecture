import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({required this.title,super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: Theme.of(context).textTheme.headlineMedium);
  }
}
