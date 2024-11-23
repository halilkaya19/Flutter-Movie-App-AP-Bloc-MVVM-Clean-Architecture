import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_project_bloc_api_lists/core/res/components/general_error_components.dart';
import 'package:real_project_bloc_api_lists/core/res/components/general_sizedbox.dart';
import 'package:real_project_bloc_api_lists/core/res/components/general_text_widget.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/spacing_constant.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/string_constant.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/unit_constant.dart';
import 'package:real_project_bloc_api_lists/core/utils/general_utils.dart';
import 'package:real_project_bloc_api_lists/core/utils/routes/routes_name.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';
import 'package:real_project_bloc_api_lists/features/presentation/bloc/movie_bloc.dart';
import 'package:real_project_bloc_api_lists/features/presentation/widget/appbar_icon_button_widget.dart';
import 'package:real_project_bloc_api_lists/features/presentation/widget/main_list_box_content.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: UnitApp.appbarHeight,
        title: TextWidget(title: AppString.instance.appBarTilte),
        actions: [
          AppbarIconWidget(onPress: () {}, icons: Icons.search),
        ],
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state is MovieLoadingsState) {
            return Utils.centerCircularProgressIndicator();
          } else if (state is MovieLoadState) {
            final lists = state.lists ?? [];
            return Padding(
              padding: SpacingApp.mainGridviewTopPadding,
              child: _gridview_list(lists),
            );
          } else if (state is MovieErrorState) {
            return ErrorComponents(errorMessage: state.error);
          }
          return const SizedBoxComponents();
        },
      ),
    );
  }

  GridView _gridview_list(List<movie_model?> lists) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: UnitApp.mainListBoxCount),
        itemBuilder: (BuildContext context, int index) {
          var oankiListe = lists[index];
          return InkWell(
            onTap: (){
                Navigator.of(context).pushNamed(RoutesName.detail,arguments: oankiListe);
            },
            child: MainListBoxContentWidget(m: oankiListe),
          );
        });
  }


}
