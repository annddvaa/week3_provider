import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week3_provider/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:week3_provider/features/cart/presentation/providers/cart_provider.dart';
import 'package:week3_provider/main.dart';

Widget buildApp() {
  final CartRepository = CartRepositoryImpl();
  return ChangeNotifierProvider(
    create: (_) => CartProvider(repository: CartRepository),
    child: const MyApp(),
  );
}
