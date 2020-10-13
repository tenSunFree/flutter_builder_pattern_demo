import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_builder_pattern_demo/home/presenter/home_presenter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomePresenter _presenter = HomePresenter();
  int _currentLanguageIndex = HomePresenter.JAPANESE_LANGUAGE;

  @override
  void initState() {
    super.initState();
    _setFullScreen();
    _changeCurrentLanguageIndex(HomePresenter.JAPANESE_LANGUAGE);
  }

  void _setFullScreen() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeRight,
    ]);
  }

  void _changeCurrentLanguageIndex(int index) {
    setState(() {
      _currentLanguageIndex = index;
      _presenter.changeLanguageBuilder(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(_presenter.getImageAssetName(_currentLanguageIndex),
          fit: BoxFit.fill),
      Column(children: <Widget>[
        Expanded(child: SizedBox(), flex: 28),
        Expanded(
            child: Row(children: <Widget>[
              Expanded(child: SizedBox(), flex: 32),
              Expanded(
                  child: GestureDetector(
                      onTap: () => _changeCurrentLanguageIndex(0)),
                  flex: 18),
              Expanded(
                  child: GestureDetector(
                      onTap: () => _changeCurrentLanguageIndex(1)),
                  flex: 18),
              Expanded(
                child: GestureDetector(
                    onTap: () => _changeCurrentLanguageIndex(2)),
                flex: 18,
              ),
              Expanded(child: SizedBox(), flex: 32),
            ]),
            flex: 13),
        Expanded(
            child: GestureDetector(onTap: () => _showLanguageContent()),
            flex: 25)
      ])
    ]);
  }

  void _showLanguageContent() {
    Fluttertoast.showToast(
        msg: _presenter.getLanguageContent(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xFF0FB4FF),
        textColor: Color(0xFFFAE539),
        fontSize: 16.0);
  }
}
