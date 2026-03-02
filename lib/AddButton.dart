import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week3_provider/CartModel.dart';

class AddButton extends StatelessWidget {
  final String item;
  const AddButton({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<Cartmodel, bool>(
      (cart) => cart.items.contains(item),
    );
    return TextButton(
      onPressed: isInCart
          ? null
          : () {
              context.read<Cartmodel>().add(item);
            },
      child: isInCart
          ? const Icon(Icons.check, color: Colors.green)
          : const Text('Tambah'),
    );
  }
}
