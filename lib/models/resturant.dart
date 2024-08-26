import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Resturant extends ChangeNotifier {
  final List<Food> _menu = [
    //BURGERS
    Food(
        name: "Classic CheeseBurger",
        description:
            "a hamburger with a slice of melted cheese on top of the meat patty",
        imagePath: "assets/burgers/cheese burger.jpg",
        price: 9.99,
        categories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Becon", price: 1.99),
          Addon(name: "sauce", price: 0.99)
        ]),
    Food(
        name: "Ranch Burger",
        description:
            "A juicy beef patty topped with crispy bacon, melted cheddar cheese, tangy ranch dressing",
        imagePath: "assets/burgers/ranchBurger.jpg",
        price: 11.5,
        categories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Becon", price: 1.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "Mushroom Burger",
        description:
            "A juicy beef patty, sautéed in a rich mushroom gravy, topped with a generous helping of fresh, sautéed mushrooms, melted Swiss cheese, and crisp lettuce,",
        imagePath: "assets/burgers/mushroom burger.jpg",
        price: 18.0,
        categories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Becon", price: 1.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "Chicken Burger",
        description:
            "A tender, grilled chicken breast, seasoned to perfection, topped with fresh lettuce, juicy tomato, and creamy mayonnaise",
        imagePath: "assets/burgers/chicken burgers.webp",
        price: 14.0,
        categories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Becon", price: 1.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "BBQ Burger",
        description:
            "A flame-grilled beef patty, smothered in tangy barbecue sauce, topped with crispy onion rings, melted cheddar cheese, and fresh lettuce and tomato.",
        imagePath: "assets/burgers/bbq burger.jpg",
        price: 15.0,
        categories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Becon", price: 1.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    //salads

    Food(
        name: "Caesar Salad",
        description:
            "Crisp romaine lettuce tossed in a creamy, garlic-infused Caesar dressing, generously topped with freshly grated Parmesan cheese, crispy croutons.",
        imagePath: "assets/salads/caesar salad.jpg",
        price: 9.99,
        categories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Avocado", price: 2.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "CopyCat Salad",
        description:
            "A fresh take on a classic, this salad features crisp romaine lettuce, shredded cheddar cheese, crispy croutons, and a creamy, tangy dressing.",
        imagePath: "assets/salads/copycat salad.jpg",
        price: 9.99,
        categories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Avocado", price: 2.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "LaScala Salad",
        description:
            "A sophisticated and flavorful salad, featuring a bed of mixed greens, topped with grilled chicken, sliced avocado, crisp bacon, hard-boiled egg, and a zesty, homemade Italian dressing.",
        imagePath: "assets/salads/la scala salad.jpg",
        price: 9.99,
        categories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Avocado", price: 2.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "Arugula Salad",
        description:
            "A vibrant and peppery salad, featuring a bed of fresh, peppery arugula leaves, tossed with sweet cherry tomatoes, crunchy toasted walnuts, and shavings of tangy Parmesan cheese.",
        imagePath: "assets/salads/arugula salad.jpg",
        price: 9.99,
        categories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Avocado", price: 2.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    Food(
        name: "Pasta Salad",
        description:
            "A colorful and satisfying blend of al dente pasta, crisp vegetables, and a tangy, herb-infused dressing. This versatile pasta salad features a mix of vibrant ingredients.",
        imagePath: "assets/salads/pasta salad.jpg",
        price: 9.99,
        categories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Avocado", price: 2.99),
          Addon(name: "sauce", price: 0.99)
        ]),

    //DRINKS

    Food(
        name: "Blueberry Mojito",
        description:
            "A refreshing and vibrant twist on the classic mojito, this cocktail features a harmonious blend of fresh blueberries, crisp mint, and a splash of rum.",
        imagePath: "assets/drinks/blueberry mojito.jpg",
        price: 10.5,
        categories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Refill", price: 10),
        ]),

    Food(
        name: "Classic Mojito",
        description:
            "harmonious blend of white rum, fresh lime juice, mint leaves, and a touch of simple syrup.",
        imagePath: "assets/drinks/classic mojito.jpg",
        price: 9.5,
        categories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Refill", price: 9),
        ]),

    Food(
        name: "Cola ",
        description: "A classic and beloved carbonated soft drink.",
        imagePath: "assets/drinks/cola.jpeg",
        price: 10,
        categories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Refill", price: 10),
        ]),

    Food(
        name: "Fresh Juice",
        description:
            "Vibrant, nutrient-rich, and bursting with natural sweetness, this fresh juice is made from a carefully selected blend of ripe, seasonal fruits and/or vegetables.",
        imagePath: "assets/drinks/fresh juice.webp",
        price: 7.5,
        categories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Refill", price: 7),
        ]),

    Food(
        name: "Cold Water",
        description: "A refreshing and essential beverage .",
        imagePath: "assets/drinks/water.webp",
        price: 5.5,
        categories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Refill", price: 5),
        ]),

    // DESERTS
    Food(
        name: "Waffle",
        description:
            "A golden-brown, griddle-cooked exterior with a fluffy, tender interior .",
        imagePath: "assets/desserts/waffles.jpeg",
        price: 9.5,
        categories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra sauce", price: 9),
        ]),

    Food(
        name: "Molten",
        description:
            "A decadent and indulgent treat, the Molten Dessert features a warm, freshly baked exterior that gives way to a gooey, chocolate-rich center.",
        imagePath: "assets/desserts/molten.jpg",
        price: 9.5,
        categories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra sauce", price: 9),
        ]),

    Food(
        name: "PanCakes",
        description:
            "A fluffy, griddle-cooked delight made from a simple batter of flour, eggs, milk, and a hint of sweetness.",
        imagePath: "assets/desserts/pancakes.jpg",
        price: 9.5,
        categories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra sauce", price: 9),
        ]),

    Food(
        name: "CheeseCake",
        description:
            "A rich and creamy dessert masterpiece, Cheesecake features a smooth, velvety filling made .",
        imagePath: "assets/desserts/cheesecake.jpg",
        price: 9.5,
        categories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra sauce", price: 9),
        ]),

    Food(
        name: "IceCream",
        description:
            "A classic and beloved frozen treat, Ice Cream is a smooth, creamy, and indulgent dessert.",
        imagePath: "assets/desserts/ice cream.jpg",
        price: 9.5,
        categories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Refill", price: 9),
          Addon(name: "Extra sauce", price: 9),
        ]),

    //sides

    Food(
        name: "Frensh Fries",
        description:
            "Crispy, golden-brown, and utterly irresistible, French Fries are a quintessential side dish.",
        imagePath: "assets/sides/frensh fries.webp",
        price: 9,
        categories: FoodCategories.sides,
        availableAddons: [
          Addon(name: "Refill", price: 9),
          Addon(name: "sauce", price: 9),
        ]),

    Food(
        name: "Onion Rings",
        description:
            "A beloved and crave-worthy side dish, Onion Rings feature thick-cut slices of sweet onion, coated in a light, crispy batter and fried to golden-brown perfection.",
        imagePath: "assets/sides/onion rings.jpg",
        price: 9,
        categories: FoodCategories.sides,
        availableAddons: [
          Addon(name: "Refill", price: 9),
          Addon(name: "sauce", price: 9),
        ]),

    Food(
        name: "Chicken Strips",
        description: "ender, juicy, and perfectly breaded.",
        imagePath: "assets/sides/chicken strips.jpeg",
        price: 11,
        categories: FoodCategories.sides,
        availableAddons: [
          Addon(name: "sauce", price: 9),
        ]),

    Food(
        name: "Spring Rolls",
        description:
            "Delicate and refreshing, Spring Rolls are a delightful appetizer or snack made by wrapping a variety of fresh vegetables, herbs, and sometimes shrimp or other proteins.",
        imagePath: "assets/sides/springrolls.jpg",
        price: 10,
        categories: FoodCategories.sides,
        availableAddons: [
          Addon(name: "Refill", price: 10),
          Addon(name: "sauce", price: 9),
        ]),

    Food(
        name: "Casadia",
        description:
            "A classic Mexican-inspired dish, the Quesadilla features two warm, golden-brown tortillas enveloping a melted blend of savory cheeses.",
        imagePath: "assets/sides/casadia.jpg",
        price: 14,
        categories: FoodCategories.sides,
        availableAddons: [
          Addon(name: "sauce", price: 9),
        ]),
  ];

  final List<CartItem> _cart = [];

  String _deliveryAddress = 'El-Mansoura';

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAdd(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("             Here's your receipt          ");
    receipt.writeln();

    String formattedDate =
        DateFormat('           yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("   ----------------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)} ");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("    ------------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivering to : $deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.price} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
