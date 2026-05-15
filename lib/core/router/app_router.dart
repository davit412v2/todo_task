import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_task/core/router/login_router.dart';
import 'package:todo_task/core/router/task_router.dart';

Provider<GoRouter> routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/login",
    routes: [
    loginRoute,
    taskRoute,
  ]);
});
