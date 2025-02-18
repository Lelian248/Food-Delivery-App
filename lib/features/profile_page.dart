import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/core/colors.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/ProfilePicture.png'),
          ),
          SizedBox(height: 20),
          Text(
            "User Name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "user@Example.com",
            style: TextStyle(fontSize: 14, color: AppColors.grayColor),
          ),
          Text("+970 123456789",
              style: TextStyle(fontSize: 14, color: AppColors.grayColor)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
                shape: WidgetStateProperty.all(RoundedRectangleBorder)),
            child: Text("Edit Profile"),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text("Email"),
                      subtitle: Text("user@Example.com"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Phone Number"),
                      subtitle: Text("+970 123456789"),
                    ),
                    Divider(),
                    ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("Location"),
                        subtitle: Text("Palestine"))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
