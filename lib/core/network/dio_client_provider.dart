import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_task/core/network/dio_client.dart';
import 'package:todo_task/core/storage/secure_storage_provider.dart';

Provider<DioClient> dioClientProvider = Provider<DioClient>((ref) {
  final secureStorageService = ref.watch(secureStorageProvider);
  return DioClient(secureStorageService: secureStorageService);
});