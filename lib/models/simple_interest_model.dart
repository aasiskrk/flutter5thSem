class SimpleInterestModel{
  final double p;
  final double r;
  final double t;

  SimpleInterestModel({
    required this.p,
    required this.r,
    required this.t,
});

  double si(){
    return (p*t*r)/100;
  }
}