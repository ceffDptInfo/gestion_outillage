import 'package:flutter/material.dart';

import '../../core/appbar_widget.dart';

class DetailImage extends StatelessWidget {
  final String title;
  const DetailImage(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.width * 0.05,
            ),
            child: const AppBarReturn()),
        body: GestureDetector(
          child: Center(
            child:
                Image.asset('assets/images/image_outils/' + title.toString()),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
