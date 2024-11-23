import 'package:get_it/get_it.dart';
import 'core/api/dio_manager.dart';
import 'features/data/repository/post_repository.dart';

final locator = GetIt.instance;

void injectGetItSetup(){
  locator.registerSingleton<ApiManager>(DioApiServices());
  locator.registerSingleton<IpostRespository>(postDataRepositoryDioImpl());
}
