import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_mosul/appcolor.dart';
import 'package:quran_mosul/sora/itemssoradetails.dart';

class SoraDetailsScreen extends StatefulWidget {
  SoraDetailsScreen({super.key});

  static const String routName = 'soradetails';

  @override
  State<SoraDetailsScreen> createState() => _SoraDetailsScreenState();
}

class _SoraDetailsScreenState extends State<SoraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SoraDetailsArgs;
    if (verses.isEmpty) {
      loadFiles(args.index);
    }
    loadFiles(args.index);
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
              args.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primaryLightColor,
                  ),
                )
              : ListView.builder(
                  itemCount: verses.length,
                  itemBuilder: (context, index) {
                    return ItemSoraDetails(content: verses[index]);
                  },
                ),
        ),
      ],
    );
  }

  void loadFiles(int index) async {
    String content = await rootBundle.loadString(
      'assets/files/quran/${index + 1}.txt',
    );
    verses = content.split('\n');
    setState(() {});
  }
}

class SoraDetailsArgs {
  String name;
  int index;
  SoraDetailsArgs({required this.name, required this.index});
}
