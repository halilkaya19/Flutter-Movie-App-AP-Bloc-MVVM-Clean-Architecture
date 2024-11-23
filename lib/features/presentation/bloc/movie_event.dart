part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();
}

class MovieLoadEvent extends MovieEvent{
  @override
  List<Object?> get props => throw UnimplementedError();
}

class MovieSingleEvent extends MovieEvent{
    final String id;
    MovieSingleEvent({required this.id});

    @override
    // TODO: implement props
    List<Object?> get props => [id];
}

