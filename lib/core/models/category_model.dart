class CategoryModel {
  final String id;
  final String name;
  final String ImageUrl;

  CategoryModel({
    required this.id,
    required this.name,
    required this.ImageUrl,
  });
}

List<CategoryModel> Categories = [
  CategoryModel(
    id: '1',
    name: 'Burgers',
    ImageUrl: 'assets/images/categories/burger.png',
  ),
  CategoryModel(
    id: '2',
    name: 'Pizza',
    ImageUrl: 'assets/images/categories/pizza.png',
  ),
  CategoryModel(
    id: '3',
    name: 'Pasta',
    ImageUrl: 'assets/images/categories/pasta.png',
  ),
  CategoryModel(
    id: '4',
    name: 'Burgers',
    ImageUrl: 'assets/images/categories/burger.png',
  ),
  CategoryModel(
    id: '25',
    name: 'Pizza',
    ImageUrl: 'assets/images/categories/pizza.png',
  ),
  CategoryModel(
    id: '6',
    name: 'Pasta',
    ImageUrl: 'assets/images/categories/pasta.png',
  ),
];
