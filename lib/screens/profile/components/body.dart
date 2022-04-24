import 'package:flutter/material.dart';
import 'account_page.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';
import 'settings.dart';
import 'notifications.dart';
import 'help_center.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            navigation: const MyAccount(),
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            navigation: const Notifications(),
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            navigation: const SettingsPage(),
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            navigation: const HelpCenter(),
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            navigation: const MyAccount(),
          ),
        ],
      ),
    );
  }
}
