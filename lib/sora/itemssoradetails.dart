import 'package:flutter/material.dart';

class ItemSoraDetails extends StatelessWidget {
  String content;
  ItemSoraDetails({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      '$content',
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(height: 2),
    );
  }
}
