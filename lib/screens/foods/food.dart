class Food {
  String imagedir;
  String foodname;
  String foodtitle;
  String fooddescription;
  String foodingredients;
  String foodvalues;

  Food(
      {this.imagedir,
      this.foodname,
      this.foodtitle,
      this.fooddescription,
      this.foodingredients,
      this.foodvalues});
}

List<Food> foods = [
  Food(imagedir: "assets/unnamed.png", foodname: "Name", foodtitle: "Açıklama",
      fooddescription: "sssssssssssssssssssssssssssssssssssssssssssssssssss",foodingredients: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",foodvalues: "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"),
];
