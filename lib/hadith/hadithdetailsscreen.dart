import 'package:flutter/material.dart';
import 'package:quran_mosul/hadith/hadithtab.dart';
import 'package:quran_mosul/hadith/itemshadithdetails.dart';

class HadithDetailsScreen extends StatefulWidget {
  HadithDetailsScreen({super.key});

  static const String routName = 'hadithdetails';

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
      children: [
        Image.asset(
          'assets/images/nn.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: ListView.builder(
            itemCount: args.content.length,
            itemBuilder: (context, index) {
              return ItemHadithDetails(content: args.content[index]);
            },
          ),
        ),
      ],
    );
  }
}
