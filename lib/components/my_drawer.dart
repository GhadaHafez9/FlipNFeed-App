import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/setting.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class MyCustDrawer extends StatelessWidget {
  const MyCustDrawer({super.key});

  void logOut() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset(
              'assets/images/only-logo.png',
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }),
          const Spacer(),
          MyDrawerTile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {
                logOut();
                Navigator.pop(context);
              }),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
