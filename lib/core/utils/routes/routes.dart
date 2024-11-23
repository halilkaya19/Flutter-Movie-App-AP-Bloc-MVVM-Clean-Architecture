import 'package:flutter/material.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/string_constant.dart';
import 'package:real_project_bloc_api_lists/core/utils/routes/routes_name.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';
import 'package:real_project_bloc_api_lists/features/presentation/screens/home_view/home_view.dart';
import 'package:real_project_bloc_api_lists/features/presentation/screens/movie_detail_view/movie_detail_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeViews());
      case RoutesName.detail:
        return MaterialPageRoute(settings: settings,
            builder: (BuildContext context) => movieDetailView(movieModel: settings.arguments as movie_model));
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(child: Text(AppString.instance.notfound)),
          );
        });
    }
  }
}
