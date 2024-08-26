import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //style
    var myPrimaryTextstyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecTextstyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // fee
          Column(
            children: [
              Text(
                '\$0.99',
                style: myPrimaryTextstyle,
              ),
              Text(
                'Delivery fee',
                style: mySecTextstyle,
              )
            ],
          ),

          // time
          Column(
            children: [
              Text(
                '15-30 min',
                style: myPrimaryTextstyle,
              ),
              Text(
                'Delivery time',
                style: mySecTextstyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
