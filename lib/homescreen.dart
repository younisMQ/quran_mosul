import 'package:flutter/material.dart';
import 'package:quran_mosul/hadith/hadithtab.dart';
import 'package:quran_mosul/sora/qurantab.dart';
import 'package:quran_mosul/tasbih/tasbihtab.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  static const String routName = 'Home';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
              'قرآن الموصل',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(
              context,
            ).copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: 'القرآن الكريم',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadith.png')),
                  label: 'الحديث النبوي',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/tasbih.png')),
                  label: 'التسبيح',
                ),
              ],
            ),
          ),

          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadithTab(), TasbihTab()];
}
