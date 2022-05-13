import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChoiceChipItemEtat extends StatefulWidget {
  final String title;
  final Color color;
  String selectedEtat;

  ChoiceChipItemEtat(this.title, this.color, this.selectedEtat, {Key? key})
      : super(key: key);

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
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.15,
        child: FittedBox(
          fit: BoxFit.contain,
          child: ChoiceChip(
            avatar: widget.title == widget.selectedEtat
                ? const Icon(Icons.check_circle)
                : const Icon(Icons.check_circle_outline),
            shape: const StadiumBorder(side: BorderSide()),
            label: Text(widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 15)),
            labelPadding: const EdgeInsets.symmetric(horizontal: 50),
            selected: widget.selectedEtat == widget.title,
            onSelected: (bool selected) {
              setState(() {
                widget.selectedEtat = selected ? widget.title : '';
              });
            },
            backgroundColor: Colors.black26,
            selectedColor:
                // ignore: unrelated_type_equality_checks
                widget.color != selectedColor ? widget.color : Colors.black26,
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ChoiceChipItemStatut extends StatefulWidget {
  final String title;
  final Color color;
  final String selectedEtat;
  String selectedStatut;
  ChoiceChipItemStatut(
      this.title, this.color, this.selectedEtat, this.selectedStatut,
      {Key? key})
      : super(key: key);

  @override
  _ChoiceChipItemStatutState createState() => _ChoiceChipItemStatutState();
}

class _ChoiceChipItemStatutState extends State<ChoiceChipItemStatut> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ChoiceChip(
        avatar: widget.selectedEtat == widget.title
            ? const Icon(Icons.check_circle)
            : const Icon(Icons.check_circle_outline),
        shape: const StadiumBorder(side: BorderSide()),
        label: Text(widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 15)),
        labelPadding: const EdgeInsets.symmetric(horizontal: 50),
        selected: widget.selectedStatut == widget.title,
        onSelected: (bool selected) {
          setState(() {
            widget.selectedStatut = selected ? widget.title : '';
          });
        },
        backgroundColor: Colors.black26,
        selectedColor: widget.color,
      ),
    );
  }
}
