import 'package:flutter_builder_pattern_demo/home/model/base_language_builder.dart';

class EnglishLanguageBuilder extends BaseLanguageBuilder {
  String _totalPopulation;
  String _capital;
  String _food;

  String get totalPopulation => _totalPopulation;

  String get capital => _capital;

  String get food => _food;

  @override
  void setTotalPopulation() {
    _totalPopulation = 'Total population: 328,100,000.';
  }

  @override
  void setCapital() {
    _capital = 'Capital: Washington.';
  }

  @override
  void setFood() {
    _food = 'Food: Corn dog, Turducken.';
  }
}
