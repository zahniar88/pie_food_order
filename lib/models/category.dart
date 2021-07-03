class Category {
  final String icon, title;

  Category({
    required this.icon,
    required this.title,
  });
}

List<Category> categories = [
  Category(icon: "assets/icons/cat1.svg", title: "Salty Pie"),
  Category(icon: "assets/icons/cat2.svg", title: "Sweet Pie"),
  Category(icon: "assets/icons/cat3.svg", title: "Fruit Pie"),
  Category(icon: "assets/icons/cat4.svg", title: "Drinks"),
];