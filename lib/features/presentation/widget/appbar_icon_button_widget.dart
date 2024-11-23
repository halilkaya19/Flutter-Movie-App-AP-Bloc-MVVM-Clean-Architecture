

import 'package:flutter/material.dart';

class AppbarIconWidget extends StatelessWidget {

  const AppbarIconWidget({required this.onPress,required this.icons,super.key});
  final IconData icons;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPress, icon: Icon(icons));
  }
}
