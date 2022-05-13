import 'package:flutter/material.dart';
import 'widgets/outils_add_form.dart';

class OutilsAddPage extends StatelessWidget {
  const OutilsAddPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OutilsAddForm(),
    );
  }
}
