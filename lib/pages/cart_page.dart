import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_model.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(children: [
            Expanded(
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    padding: EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              leading: Image.asset(value.cartItems[index][2]),
                              title: Text(value.cartItems[index][0]),
                              subtitle: Text('\$' + value.cartItems[index][1]),
                              trailing: IconButton(
                                 icon: Icon(
                                  Icons.cancel,
                                ),
                                onPressed: () =>
                                    Provider.of<CartModel>(context, listen: false)
                                        .removeItemFromCart(index),
                              ),
                            ),
                          ));
                    })),
          ]);
        },
      )),
    );
  }
}
