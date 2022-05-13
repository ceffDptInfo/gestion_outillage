import 'package:flutter/material.dart';

class OutilsFormWidget extends StatelessWidget {
  final String title;

  const OutilsFormWidget(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10.0),
          ),
          readOnly: true,
          style: const TextStyle(fontSize: 20),
        );
      },
    );
  }
}
