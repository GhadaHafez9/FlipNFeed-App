import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, resturant, child) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //img
                        ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),

                        const SizedBox(
                          width: 10,
                        ),

                        //name&price

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name),
                            Text(
                              '\$${cartItem.food.price}',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),

                            const SizedBox(
                              height: 10,
                            ),

                            // QuantitySelector(
                            //     quantity: cartItem.quantity,
                            //     food: cartItem.food,
                            //     //PROBLEMMMMM????????????????????
                            //     onIncrement: () {
                            //       resturant.addToCart(cartItem.food , cartItem.selectedAddons);
                            //     },
                            //     onDecrement: () {
                            //       resturant.removeFromCart(cartItem);
                            //     }),
                          ],
                        ),

                        const Spacer(),
                      ],
                    ),
                  ),

                  //ADDONS
                  SizedBox(
                      height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 10, right: 10),
                        children: cartItem.selectedAddons
                            .map((addon) => Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: FilterChip(
                                    label: Row(
                                      children: [
                                        Text(addon.name),
                                        Text(
                                          '\$${addon.price}',
                                        ),
                                      ],
                                    ),
                                    shape: StadiumBorder(
                                        side: BorderSide(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                    onSelected: (value) {},
                                    backgroundColor:
                                        Theme.of(context).colorScheme.secondary,
                                    labelStyle: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary,
                                        fontSize: 12),
                                  ),
                                ))
                            .toList(),
                      )),
                ],
              ),
            ));
  }
}
