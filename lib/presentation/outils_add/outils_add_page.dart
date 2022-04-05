import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:gestion_outillage/injection.dart';

import '../../application/add_outils_form/add_outils_form_bloc.dart';
import 'widgets/outils_add_form.dart';

class OutilsAddPage extends StatelessWidget {
  const OutilsAddPage({Key? key}) : super(key: key);

  // final Outils outils;
  // const OutilsAddPage(this.outils);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AddOutilsFormBloc>()
          ..add(const AddOutilsFormEvent.initialized()),
        child: OutilsAddForm(),
      ),
    );
  }
}
