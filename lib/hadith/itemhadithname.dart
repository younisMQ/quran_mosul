import 'package:flutter/material.dart';
import 'package:quran_mosul/hadith/hadithdetailsscreen.dart';
import 'package:quran_mosul/hadith/hadithtab.dart';

class ItemHadithName extends StatelessWidget {
  Hadith hadith;
  
  ItemHadithName({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(HadithDetailsScreen.routName, arguments: hadith);
      },
      child: Text(
        hadith.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
