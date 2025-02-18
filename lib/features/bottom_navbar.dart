import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/core/colors.dart';
import 'package:fooddeliveryapp/core/widgets/AppDrawer.dart';
import 'package:fooddeliveryapp/core/widgets/custom_app_bar.dart';
import 'package:fooddeliveryapp/features/favorite_page.dart';
import 'package:fooddeliveryapp/features/home_page.dart';
import 'package:fooddeliveryapp/features/profile_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;
  List<Widget> bodyOptions = [HomePage(), FavoritePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Appdrawer(),
      appBar: CustomAppBar(),
      body: bodyOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.whiteColor,
        backgroundColor: AppColors.primary,
      ),
    );
  }
}
