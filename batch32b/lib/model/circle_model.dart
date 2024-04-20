// circle_model.dart

class Circle {
  final double radius;
  static const double piValue = 3.14159; // Predefined pi value

  Circle({required this.radius});

  double calculateArea() {
    return piValue * radius * radius;
  }
}
