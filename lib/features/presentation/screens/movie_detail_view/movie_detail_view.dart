import 'package:flutter/material.dart';
import 'package:real_project_bloc_api_lists/core/res/components/general_sizedbox.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';

class movieDetailView extends StatefulWidget {
  const movieDetailView({required this.movieModel,super.key});
  final movie_model? movieModel;

  @override
  State<movieDetailView> createState() => _movie_detail_viewState();
}

class _movie_detail_viewState extends State<movieDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 300,
              flexibleSpace: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: widget.movieModel != null ? Image.network(widget.movieModel!.posterURL ?? '',fit: BoxFit.cover) : const SizedBox(),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  widget.movieModel != null ? Column(
                      children: [
                        const SizedBoxComponents(heightbox:15,),
                        Text(widget.movieModel!.title ?? 'N/A',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white,fontSize: 32),),
                        const SizedBoxComponents(heightbox:15,),
                        Text("Imdb :${widget.movieModel!.imdbId ?? 'N/A'}",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white,fontSize: 17),),
                        const SizedBoxComponents(heightbox:12,),
                        Padding(
                            padding: const EdgeInsets.only(left:19,right: 19),
                            child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters it has a more-or-less normal distribution of lettersit has a more-or-less normal distribution of lettersit has a more-or-less normal distribution of letters it has a more-or-less normal distribution of letters",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white,fontSize: 20),),
                        ),
                      ],
                    ) : const SizedBox(),
                ]
              ),
            )
          ],
        ),
    );
  }
}
