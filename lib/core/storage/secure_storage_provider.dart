

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'secure_storage_service.dart';

Provider<SecureStorageService> secureStorageProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService();
});

