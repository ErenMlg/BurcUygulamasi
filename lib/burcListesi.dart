import 'package:burc_rehberi/burcItem.dart';
import 'package:burc_rehberi/data/veriler.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynagi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burçlar Listesi'),
        backgroundColor: Colors.pink.shade800,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,
      ),
    );
  }
}

List<Burc> veriKaynagi() {
  List<Burc> temp = [];

  for (int i = 0; i < 12; i++) {
    var gelenBurcAdi = Veriler.burcAdlari[i];
    var gelenBurcTarihi = Veriler.burcTarihleri[i];
    var gelenBurcDetayi = Veriler.burcDetaylari[i];
    var gelenBurcKucukResim =
        "${Veriler.burcAdlari[i].toLowerCase()}${i + 1}.png";
    var gelenBurcBuyukResim =
        "${Veriler.burcAdlari[i].toLowerCase()}_buyuk${i + 1}.png";
    Burc listelenecekBurc = Burc(gelenBurcAdi, gelenBurcDetayi, gelenBurcTarihi,
        gelenBurcBuyukResim, gelenBurcKucukResim);
    temp.add(listelenecekBurc);
  }
  return temp;
}
