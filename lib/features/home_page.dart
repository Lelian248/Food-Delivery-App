import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/core/colors.dart';
import 'package:fooddeliveryapp/core/models/category_model.dart';
import 'package:fooddeliveryapp/core/models/food_item.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategoryId;
  late List<FoodItem> filteredProducts;
  List<FoodItem> favoriteItems = [];

  void initState() {
    super.initState();
    filteredProducts = Food;
  }

  // Function to toggle favorite status
  void _toggleFavorite(FoodItem item) {
    setState(() {
      if (favoriteItems.contains(item)) {
        favoriteItems.remove(item); // Remove from favorites
      } else {
        favoriteItems.add(item); // Add to favorites
      }
      print("$favoriteItems");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset("assets/images/classic_burger.jpg"),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.length,
                itemBuilder: (context, index) {
                  var category = Categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryId = category.id;
                          filteredProducts = Food.where((item) {
                            return item.category.id == selectedCategoryId;
                          }).toList();
                        });
                      },
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: category.id == selectedCategoryId
                              ? AppColors.primary
                              : AppColors.whiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            children: [
                              Image.asset(
                                category.ImageUrl,
                                width: 50,
                              ),
                              SizedBox(height: 2),
                              Text(
                                category.name,
                                style: TextStyle(
                                  color: category.id == selectedCategoryId
                                      ? AppColors.whiteColor
                                      : AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            GridView.builder(
              itemCount: filteredProducts.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var food = filteredProducts[index];
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.network(
                              food.imgUrl,
                              width: double.infinity,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              favoriteItems.contains(food)
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              size: 25,
                              color: AppColors.primary,
                            ),
                            onPressed: () {
                              setState(() {
                                _toggleFavorite(food);
                              });
                            },
                          ),
                        ],
                      ),
                      Text(food.name),
                      Text(
                        "\$ ${food.price}",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
