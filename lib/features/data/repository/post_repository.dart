import 'dart:io';
import 'package:dio/dio.dart';
import 'package:real_project_bloc_api_lists/core/api/dio_exception.dart';
import 'package:real_project_bloc_api_lists/core/api/dio_manager.dart';
import 'package:real_project_bloc_api_lists/core/api/server_endpoint.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/movie_model.dart';
import 'package:real_project_bloc_api_lists/features/domain/model/post_model.dart';
import 'package:real_project_bloc_api_lists/injector_conf.dart';

abstract class IpostRespository{
  Future<List<movie_model>?> allList();
  Future<movie_model?> itemSingle({required int id});
}

class postDataRepositoryDioImpl extends IpostRespository{

  final ApiManager dioSerpostService  = locator<ApiManager>();

  @override
  Future<List<movie_model>?> allList() async{
    try{
      final result = await dioSerpostService.data.get(ApiSeriesList.family.name);
      if(result.statusCode == HttpStatus.ok){
        final datas = result.data;
        if(datas is List){
          return datas.map((e) => movie_model.fromJson(e)).toList();
        }
      }
    }on DioException catch(e){
      throw DioExceptionController.showDioError(e);
    }
  }

  @override
  Future<movie_model?> itemSingle({required int id}) async{
    try{
      final result = await dioSerpostService.data.get(ApiSeriesList.family.name,"/$id");
      if(result.statusCode == HttpStatus.ok){
        final datas = result.data;
        if(datas is Map<String,dynamic>){
          return movie_model.fromJson(datas);
        }
      }
    }on DioException catch(e){
      throw DioExceptionController.showDioError(e);
    }
  }

}
