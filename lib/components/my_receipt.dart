import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25, right: 25, top: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thanks for your order"),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8)),
              child: Consumer<Resturant>(
                  builder: (context, resturant, child) =>
                      Center(child: Text(resturant.displayCartReceipt()))),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Estimated delivery time is : 4:00 PM"),
          ],
        ),
      ),
    );
  }
}
