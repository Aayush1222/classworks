class SimpleInterestModel {
  final double principle;
  final double rate;
  final double time;

  SimpleInterestModel({
    required this.principle,
    required this.rate,
    required this.time,
  });

  //simpleinterest
  double simp() {
    return (principle * rate * time) / 100;
  }
}
