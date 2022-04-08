import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import '../../injection.dart';
import 'widgets/categories_page_form.dart';

class CategoriesOutilsMesurePage extends StatelessWidget {
  FirebaseAuth user;
   CategoriesOutilsMesurePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        BlocProvider(
          create: (context) => getIt<OutilsWatcherBloc>()
            ..add(const OutilsWatcherEvent.watchOutilsStarted()),
          child:
         CategoriesOutilsMesureForm(user: user,),);
  }
}
