import 'package:flutter/material.dart';

class ChipInfo extends StatelessWidget {
  final String etat;
  final String status;
  const ChipInfo({Key? key, required this.etat, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          color: etat == "Usagé"
              ? Colors.orange
              : etat == "Neuf"
                  ? Colors.green
                  : etat == "Défectueux"
                      ? Colors.red
                      : status == "Disponible"
                          ? Colors.green
                          : status == "Emprunté"
                              ? Colors.red
                              : Colors.transparent,
          child: Center(
            child: Text(
              etat != ""
                  ? etat == "Usagé"
                      ? "Non-Fonctionnel"
                      : "Fonctionnel"
                  : status != ""
                      ? status
                      : "",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
