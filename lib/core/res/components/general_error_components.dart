import 'package:flutter/material.dart';
import 'package:real_project_bloc_api_lists/core/utils/general_utils.dart';

class ErrorComponents extends StatelessWidget {

  const ErrorComponents({required this.errorMessage,super.key});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hata / ${errorMessage}",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white)),
    );
  }
}
