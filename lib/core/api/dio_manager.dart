import 'package:dio/dio.dart';
import 'package:real_project_bloc_api_lists/core/api/server_endpoint.dart';

abstract class ApiManager<T>{
  late final T data;
}

class DioApiServices extends ApiManager{
  DioApiServices(){
    data = Dio(
        BaseOptions(
            baseUrl: ServerEndpoint.baseUrl,
            connectTimeout: const Duration(seconds: ServerEndpoint.connectionTimeout),
            receiveTimeout: const Duration(seconds: ServerEndpoint.receiveTimeout),
            responseType: ResponseType.json,
            headers: ServerEndpoint.headerMap
        )
    );
  }
}


