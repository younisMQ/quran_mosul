import 'package:flutter/material.dart';

class ItemHadithDetails extends StatelessWidget {
  String content;
  ItemHadithDetails({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(height: 1.8),
    );
  }
}
