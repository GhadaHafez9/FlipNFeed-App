import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCurrentLoc extends StatelessWidget {
  const MyCurrentLoc({super.key});

  void openLocationSearchBox(BuildContext context) {
    TextEditingController textController = TextEditingController();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Your location'),
              content: TextField(
                controller: textController,
                decoration: const InputDecoration(hintText: "Enter address.."),
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {
                    String newAddress = textController.text;
                    context.read<Resturant>().updateDeliveryAdd(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text('Save'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Resturant>(
                  builder: (context, resturant, child) => Text(
                    resturant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ), //ad
                ),
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
