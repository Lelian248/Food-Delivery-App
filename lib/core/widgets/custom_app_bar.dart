import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/core/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: AppColors.whiteColor),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: AppColors.whiteColor,
          ),
        )
      ],
      title: Column(
        children: [
          Text(
            "Current Location",
            style: TextStyle(
              color: AppColors.grayColor,
              fontSize: 14,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: AppColors.greenColor,
              ),
              Text(
                "Nablus, Palestine",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: AppColors.primary,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
