import 'package:flutter_builder_pattern_demo/home/model/home_model.dart';

class HomePresenter {
  static const int JAPANESE_LANGUAGE = 0;
  static const int ENGLISH_LANGUAGE = 1;
  static const int CHINESE_LANGUAGE = 2;

  final List<String> _imageAssetNameList = [
    'assets/icon_japanese.png',
    'assets/icon_english.png',
    'assets/icon_chinese.png'
  ];

  BaseLanguageBuilder _languageBuilder;

  HomePresenter();

  BaseLanguageBuilder get languageBuilder => _languageBuilder;

  String getImageAssetName(int index) {
    return _imageAssetNameList[index];
  }

  void changeLanguageBuilder(int index) {
    switch (index) {
      case JAPANESE_LANGUAGE:
        this._languageBuilder = JapaneseLanguageBuilder();
        break;
      case ENGLISH_LANGUAGE:
        this._languageBuilder = EnglishLanguageBuilder();
        break;
      case CHINESE_LANGUAGE:
        this._languageBuilder = ChineseLanguageBuilder();
        break;
    }
    setAll();
  }

  void setAll() {
    this._languageBuilder.setTotalPopulation();
    this._languageBuilder.setCapital();
    this._languageBuilder.setFood();
  }

  String getLanguageContent() {
    return '${_languageBuilder.totalPopulation}\n${_languageBuilder.capital}\n'
        '${_languageBuilder.food}';
  }
}
