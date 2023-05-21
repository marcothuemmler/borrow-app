import 'package:borrow_app/common/providers.dart';
import 'package:borrow_app/common/theme_data.dart';
import 'package:borrow_app/util/dio.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await DioUtil().init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: themeData,
      routerConfig: ref.watch(providers.routerProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
