import 'package:flutter/material.dart';

class DropDownList extends StatelessWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 24,
      margin: const EdgeInsets.only(left: 20, top: 4),
      // padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        border: Border.all(color: Colors.black, width: 1),
      ),

      child: DropdownButton<String>(
        items: <String>[
          'Les plus utilisés',
          'Les derniers utilisés',
          'Disponible',
          'Emprunté',
          'Neuf',
          'Usagé'
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: const Center(child: Text("Trier par")),
        onChanged: (_) {},
        isExpanded: true,
        itemHeight: 50.0,
      ),
    );
  }
}
