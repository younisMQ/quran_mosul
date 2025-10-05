import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_mosul/appcolor.dart';
import 'package:quran_mosul/hadith/itemhadithname.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) {
      loadHadithFile();
    }
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            "assets/images/quran1.png",
            height: 100,
            width: 100,
          ),
        ),
        Divider(color: AppColor.textColor, thickness: 3),
        Text('Hadith Name', style: Theme.of(context).textTheme.bodyMedium),
        Divider(color: AppColor.textColor, thickness: 3),
        Expanded(
          flex: 2,
          child: hadithList.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(color: AppColor.textColor, thickness: 3);
                  },
                  itemCount: hadithList.length,
                  itemBuilder: (context, index) {
                    return ItemHadithName(hadith: hadithList[index]);
                  },
                ),
        ),
      ],
    );
  }

  void loadHadithFile() async {
    String hadithContent = await rootBundle.loadString(
      'assets/files/hadith.txt',
    );
    List<String> hadithList0 = hadithContent.split('#\n');

    for (int i = 0; i < hadithList0.length; i++) {
      List<String> hadithLines = hadithList0[i].split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      Hadith hadith = Hadith(title: title, content: hadithLines);
      hadithList.add(hadith);
      setState(() {});
    }
  }

//   void loadHadithFile() async {
//   String hadithContent = await rootBundle.loadString(
//     'assets/files/hadith.txt',
//   );
//   List<String> hadithList0 = hadithContent.split('#\n');

//   for (int i = 0; i < hadithList0.length; i++) {
//     List<String> hadithLines = hadithList0[i].split('\n');
//     if (hadithLines.isEmpty) continue;
//     String title = hadithLines[0]; // بس العنوان
//     Hadith hadith = Hadith(title: title, content: []); // نخلي النص فاضي
//     hadithList.add(hadith);
//   }
//   setState(() {});
// }

}

class Hadith {
  String title;
  List<String> content;
  Hadith({required this.title, required this.content});
}
