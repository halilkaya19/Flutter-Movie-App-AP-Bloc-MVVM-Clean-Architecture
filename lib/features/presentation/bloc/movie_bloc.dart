import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';
import 'package:real_project_bloc_api_lists/features/domain/repository/post_repository.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {

  final IpostRepository repo = PostRepository();

  MovieBloc() : super(MovieInitial()) {

    on<MovieLoadEvent>((event, emit) async {
       emit(MovieLoadingsState());
       await Future.delayed(const Duration(seconds:1));
       await repo.allList().then((value) {
         emit(MovieLoadState(lists: value));
       }).onError((error, stackTrace){
         emit(MovieErrorState(error.toString()));
       });
    });

    on<MovieSingleEvent>((event, emit) async {
      emit(MovieLoadingsState());
      await Future.delayed(const Duration(seconds:1));
      await repo.itemSingle(id: event.id as int).then((value){
        emit(MovieLoadState(singleModel: value));
      }).onError((error, stackTrace) {
        emit(MovieErrorState(error.toString()));
      });;
    });
  }
  
}
