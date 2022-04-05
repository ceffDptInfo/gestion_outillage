import 'package:flutter/material.dart';

class ChoiceChipItemEtat extends StatefulWidget {
  String title;
  Color color;
  String selectedEtat;

  ChoiceChipItemEtat(
    this.title,
    this.color,
    this.selectedEtat,
  );

  @override
  State<ChoiceChipItemEtat> createState() => _ChoiceChipItemEtatState();
}

class _ChoiceChipItemEtatState extends State<ChoiceChipItemEtat> {
  String selectedColor = '';
  String selectedChoice = '';

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        child: FittedBox(
          fit: BoxFit.contain,
          child: ChoiceChip(
            avatar: widget.title == widget.selectedEtat
                ? Icon(Icons.check_circle)
                : Icon(Icons.check_circle_outline),
            shape: StadiumBorder(side: BorderSide()),
            label: Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15)),
            labelPadding: EdgeInsets.symmetric(horizontal: 50),
            selected: widget.selectedEtat == widget.title,
            onSelected: (bool selected) {
              setState(() {
                widget.selectedEtat = selected ? widget.title : '';
                // widget.color = Colors.black;
                print(widget.selectedEtat);
              });
            },
            backgroundColor: Colors.black26,
            selectedColor:
                widget.color != selectedColor ? widget.color : Colors.black26,

            // shape: ContinuousRectangleBorder(
            //     borderRadius: BorderRadius.circular(5.0))
          ),
        ),
      ),
    );
  }
}

class ChoiceChipItemStatut extends StatefulWidget {
  String title;
  Color color;
  String selectedEtat;
  String selectedStatut;
  ChoiceChipItemStatut(
    this.title,
    this.color,
    this.selectedEtat,
    this.selectedStatut,
  );

  @override
  _ChoiceChipItemStatutState createState() => _ChoiceChipItemStatutState();
}

class _ChoiceChipItemStatutState extends State<ChoiceChipItemStatut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ChoiceChip(
          avatar: widget.selectedEtat == widget.title
              ? Icon(Icons.check_circle)
              : Icon(Icons.check_circle_outline),
          shape: StadiumBorder(side: BorderSide()),
          label: Text(widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15)),
          labelPadding: EdgeInsets.symmetric(horizontal: 50),
          selected: widget.selectedStatut == widget.title,
          onSelected: (bool selected) {
            setState(() {
              widget.selectedStatut = selected ? widget.title : '';
              // widget.color = Colors.black;
              // print("test");
            });
          },
          backgroundColor: Colors.black26,
          selectedColor: widget.color,
          // shape: ContinuousRectangleBorder(
          //     borderRadius: BorderRadius.circular(5.0))
        ),
      ),
    );
  }
}

Widget chipInfo(etat, statut) => Container(
      margin: EdgeInsets.only(left: 100),
      width: 100,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          color: etat == "Usagé"
              ? Colors.orange
              : etat == "Neuf"
                  ? Colors.green
                  : etat == "Défectueux"
                      ? Colors.red
                      : statut == "Disponible"
                          ? Colors.green
                          : statut == "Emprunté"
                              ? Colors.red
                              : Colors.transparent,
          child: Center(
            child: Text(
              etat != ""
                  ? etat
                  : statut != ""
                      ? statut
                      : "",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              // textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
