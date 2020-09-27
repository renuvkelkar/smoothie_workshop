class Smoothie{
  String name;
  String imgUrl;
  int color;
  String ingredient1;
  String ingredient2;
  String ingredient3;
  int calories;
  String description;
  Smoothie({this.description,
    this.color,
    this.calories,
    this.ingredient1,
    this.name,
    this.ingredient3,
    this.ingredient2,
    this.imgUrl});
}
List smoothies = [
  Smoothie(
    name: "green refresher",
    color: 0xFF72A51A,
    calories : 90,
    ingredient1 : "milk",

  )
];