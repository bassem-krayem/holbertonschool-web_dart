List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = temperaturesInC.map((temp) {
    double fahrenheit = (temp * 9 / 5) + 32;
    String tempStr = fahrenheit.toStringAsFixed(2);
    return double.parse(tempStr);
  }).toList();
    return temperaturesInF;
}
