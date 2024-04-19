class CircleModel{
  final double radius;
  final double pi = (22/7);

  CircleModel({
    required this.radius,
});

  double area(){
    return (pi*radius*radius);
}
}