import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_test_code_app/core/di/injection_service.dart';
import 'package:food_order_test_code_app/src/main_screen/data/data_store/local_data_source.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/cart_item_model.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';
import 'package:food_order_test_code_app/src/main_screen/data/repository_impl/product_repository_impl.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/entities/cart_item.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'config/theme/theme.dart';
import 'src/main_screen/presentation/bloc/product/product_bloc.dart';
import 'src/main_screen/presentation/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: BlocProvider(
        create: (context) => serviceLocator<ProductBloc>(),
        child: const MainScreen(),
      ),
    );
  }
}
