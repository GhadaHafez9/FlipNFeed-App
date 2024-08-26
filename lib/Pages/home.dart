import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_loc.dart';
import 'package:food_delivery_app/components/my_description.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_sliver_bar.dart';
import 'package:food_delivery_app/components/my_tabbar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/food_page.dart';
import 'package:food_delivery_app/models/resturant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, User? user});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(
      FoodCategories category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.categories == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategories.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return MyFoodTile(
                food: food,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food))));
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyCustDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverBar(
              title: MyTabbar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const MyCurrentLoc(),
                  const MyDescriptionBox(),
                ],
              ))
        ],
        body: Consumer<Resturant>(
            builder: (context, resturant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(resturant.menu),
                )),
      ),
    );
  }
}
