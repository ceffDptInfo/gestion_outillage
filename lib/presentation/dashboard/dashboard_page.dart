import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import '../../injection.dart';
import 'widgets/dashboad_form.dart';

class DashboardPage extends StatelessWidget {
  FirebaseAuth user;
  DashboardPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        BlocProvider(
          create: (context) => getIt<OutilsWatcherBloc>()
            ..add(const OutilsWatcherEvent.watchOutilsStarted()),
          child:
         DashboardForm(auth: user,),);
  }
}
