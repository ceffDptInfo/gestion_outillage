import 'package:flutter/material.dart';

class OutilsFormWidget extends StatelessWidget {
  String title;
  OutilsFormWidget(this.title);
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        // final start =
        //     context.select((RideFormBloc bloc) => bloc.state.ride.start);
        return TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10.0),
            // labelText: "title" + title,
          ),

          // initialValue:
          //     stations.singleWhere((element) => element.id == start).name,
          readOnly: true,
          style: const TextStyle(fontSize: 20),
        );
      },
    );
  }
}
