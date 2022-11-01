import 'package:flutter/material.dart';
import 'model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc detayBurc;
  const BurcDetay({required this.detayBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => appBarRenginiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: true,
            pinned: true,
            backgroundColor: appBarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.detayBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                  "assets/images/" + widget.detayBurc.burcBuyukResim,
                  fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    widget.detayBurc.burcDetay,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void appBarRenginiBul() async {
    print('Build bitti baskın renk bulunacak');
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('assets/images/' + widget.detayBurc.burcBuyukResim));
    appBarRengi = _generator.dominantColor!.color;
    setState(() {});
    debugPrint(
        'Baskın renk bulundu build tekrar çalıştırılacak : $appBarRengi');
  }
}
