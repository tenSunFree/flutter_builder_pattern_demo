import 'package:flutter_builder_pattern_demo/home/model/base_language_builder.dart';

class ChineseLanguageBuilder extends BaseLanguageBuilder {
  String _totalPopulation;
  String _capital;
  String _food;

  String get totalPopulation => _totalPopulation;

  String get capital => _capital;

  String get food => _food;

  @override
  void setTotalPopulation() {
    _totalPopulation = '總人口︰23,568,378。';
  }

  @override
  void setCapital() {
    _capital = '首都︰台北。';
  }

  @override
  void setFood() {
    _food = '美食︰滷肉飯、珍珠奶茶。';
  }
}
