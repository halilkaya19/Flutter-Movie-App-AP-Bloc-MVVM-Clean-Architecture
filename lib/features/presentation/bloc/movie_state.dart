part of 'movie_bloc.dart';

abstract class MovieState extends Equatable {
  const MovieState();
}
class MovieInitial extends MovieState {
  @override
  List<Object> get props => [];
}

class MovieLoadingsState extends MovieState{
  @override
  List<Object> get props => [];
}

class MovieLoadState extends MovieState{
  List<movie_model?>? lists;
  movie_model? singleModel;
  MovieLoadState({this.lists,this.singleModel});
  @override
  // TODO: implement props
  List<Object?> get props => [lists];
}

class MovieSuccesState extends MovieState{
    @override
    List<Object> get props => [];
}

class MovieErrorState extends MovieState{
  String error;
  MovieErrorState(this.error);
  @override
  List<Object> get props => [];
}
