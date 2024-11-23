import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_project_bloc_api_lists/features/presentation/bloc/movie_bloc.dart';
import 'core/res/app_theme.dart';
import 'core/utils/routes/routes.dart';
import 'core/utils/routes/routes_name.dart';
import 'injector_conf.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  injectGetItSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieBloc()..add(MovieLoadEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: AppTheme().appTheme(),
        initialRoute: RoutesName.home,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
