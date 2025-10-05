import 'package:flutter/material.dart';
import 'package:quran_mosul/sora/soradetailsscreen.dart';

class ItemSoraName extends StatelessWidget {
  String name;
  int index;
  ItemSoraName({super.key, required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SoraDetailsScreen.routName,
          arguments: SoraDetailsArgs(name: name, index: index),
        );
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
