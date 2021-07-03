class Food {
  final String image, title, estimate;
  final double rating;

  Food({
    required this.image,
    required this.title,
    required this.estimate,
    required this.rating,
  });
}

List<Food> foods = [
  Food(
    image: "assets/images/pie1.png",
    title: "Cream Sweet Pie",
    estimate: "20-30",
    rating: 4.5,
  ),
  Food(
    image: "assets/images/pie2.png",
    title: "Double Jumbo Pie",
    estimate: "20-45",
    rating: 4.8,
  ),
  Food(
    image: "assets/images/pie3.png",
    title: "Fruit’s Small Pie",
    estimate: "10-25",
    rating: 4.5,
  ),
];
