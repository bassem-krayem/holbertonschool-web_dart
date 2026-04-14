double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  String areaString = area.toStringAsFixed(2);
  return double.parse(areaString);
}