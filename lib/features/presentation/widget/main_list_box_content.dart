import 'package:flutter/material.dart';
import 'package:real_project_bloc_api_lists/core/res/components/general_sizedbox.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/spacing_constant.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/string_constant.dart';
import 'package:real_project_bloc_api_lists/core/res/constants/unit_constant.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';

class MainListBoxContentWidget extends StatelessWidget {

  const MainListBoxContentWidget({required this.m,super.key});
  final movie_model? m;

  @override
  Widget build(BuildContext context) {
    return m != null ? Container(
        margin: SpacingApp.mainlistMargin,
        height:UnitApp.mainListBoxHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white.withOpacity(0.2),width: 1),
        ),
        child: Column(
          children: [
            Expanded(child: Image.network(m!.posterURL ?? AppString.instance.imageDummy,fit: BoxFit.cover,scale:.3,)),
            const SizedBoxComponents(heightbox:5,),
            Text(m!.title ?? 'N/A',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white,fontSize: 16),),
            const SizedBoxComponents(heightbox:5,),
            Text("Imdb :${m!.imdbId ?? 'N/A'}",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white,fontSize: 14),),
            const SizedBoxComponents(heightbox:2,),
          ],
        ),
    ) : const SizedBoxComponents();
  }
}
