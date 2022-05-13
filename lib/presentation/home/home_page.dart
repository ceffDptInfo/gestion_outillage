import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/application/outils/outils_watcher/outils_watcher_bloc.dart';

import '../../injection.dart';
import 'widgets/home_form.dart';

class HomeStartPage extends StatelessWidget {
  final FirebaseAuth user;
  const HomeStartPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OutilsWatcherBloc>()
        ..add(const OutilsWatcherEvent.watchOutilsStarted()),
      child: HomeStartForm(user),
    );
  }
}
