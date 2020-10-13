import 'package:flutter_builder_pattern_demo/home/model/base_language_builder.dart';

class JapaneseLanguageBuilder extends BaseLanguageBuilder {
  String _totalPopulation;
  String _capital;
  String _food;

  String get totalPopulation => _totalPopulation;

  String get capital => _capital;

  String get food => _food;

  @override
  void setTotalPopulation() {
    _totalPopulation = '総人口：127,094,745。';
  }

  @override
  void setCapital() {
    _capital = '首都：東京。';
  }

  @override
  void setFood() {
    _food = '食べ物：天ぷら、豚かつ。';
  }
}
