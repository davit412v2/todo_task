import 'package:dio/dio.dart';
import 'package:todo_task/core/storage/secure_storage_service.dart';

class DioClient {
  final SecureStorageService secureStorageService; 
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8080/api/'));

  DioClient({required this.secureStorageService}){
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await secureStorageService.getToken();
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));
  }

  Dio get dio => _dio;
}