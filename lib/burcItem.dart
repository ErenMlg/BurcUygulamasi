import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/burcDetay', arguments: listelenenBurc);
            },
            title: Text(listelenenBurc.burcAdi),
            subtitle: Text(listelenenBurc.burcTarih),
            leading:
                Image.asset("assets/images/" + listelenenBurc.burcKucukResim),
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.pink.shade800,
            ),
          ),
        ),
      ),
    );
  }
}
