import 'package:real_project_bloc_api_lists/features/data/repository/post_repository.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/post_model.dart';
import 'package:real_project_bloc_api_lists/injector_conf.dart';

abstract class IpostRepository{

  Future<List<movie_model>?> allList();
  Future<movie_model?> itemSingle({required int id});

}

class PostRepository extends IpostRepository{

   final IpostRespository dataSource = locator<IpostRespository>();

  @override
  Future<List<movie_model>?> allList() {
    return dataSource.allList();
  }

  @override
  Future<movie_model?> itemSingle({required int id}) {
    // TODO: implement itemSingle
    throw UnimplementedError();
  }



}
