import 'package:flutter/material.dart';
import 'package:quran_mosul/appcolor.dart';

class TasbihTab extends StatefulWidget {
  TasbihTab({super.key});

  @override
  State<TasbihTab> createState() => _TasbihTabState();
}

class _TasbihTabState extends State<TasbihTab> {
  int taspehCounter = 0;
  double angel = 0;
  int index = 0;
  List<String> thker = [
    'استغفر الله',
    'الحمد لله',
    'سبحان الله',
    'لا إله الا الله',
    'الله أكبر',
  ];
  onTap() {
    taspehCounter++;
    angel += 0.3;
    if (taspehCounter == 33) {
      taspehCounter = 0;
      index == thker.length - 1 ? index = 0 : index++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 25),
          GestureDetector(
            onTap: onTap,
            child: Transform.rotate(
              angle: angel,
              child: Image.asset(
                'assets/images/taspih1.png',
                height: 200,
                width: double.infinity,
              ),
            ),
          ),
          Text(
            'العدد',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColor.primaryLightColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$taspehCounter',
              style: TextStyle(
                color: AppColor.textColor,
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: AppColor.primaryLightColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                thker[index],
                style: TextStyle(
                  color: AppColor.textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
