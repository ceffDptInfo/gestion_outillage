import 'package:flutter/material.dart';

class OutilInformations extends StatelessWidget {
  const OutilInformations({
    Key? key,
    required this.title,
    required this.info,
    required this.color,
  }) : super(key: key);

  final String title;
  final String info;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100, bottom: 5, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            info,
            style: TextStyle(fontSize: 25, color: color),
            textWidthBasis: TextWidthBasis.longestLine,
          ),
        ],
      ),
    );
  }
}
