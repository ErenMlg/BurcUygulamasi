import 'package:burc_rehberi/burcDetay.dart';
import 'package:burc_rehberi/burcListesi.dart';
import 'package:burc_rehberi/errorPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class MyRouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return deviceFilter(BurcListesi(), settings);

      case '/burcDetay':
        Burc gidecekBurc = settings.arguments as Burc;
        return deviceFilter(BurcDetay(detayBurc: gidecekBurc), settings);

      default:
        return deviceFilter(const ErrorPage(), settings);
    }
  }

  static Route deviceFilter(
      Widget gidilecekSayfa, RouteSettings gelenSettings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: gelenSettings,
        builder: (context) => gidilecekSayfa,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: gelenSettings,
        builder: (context) => gidilecekSayfa,
      );
    } else {
      return MaterialPageRoute(
        settings: gelenSettings,
        builder: (context) => const ErrorPage(),
      );
    }
  }
}
