import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/presentation/layette/widgets/layette_form.dart';

import '../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import '../../injection.dart';

class LayettePage extends StatelessWidget {
  final FirebaseAuth user;
  const LayettePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OutilsWatcherBloc>()
        ..add(const OutilsWatcherEvent.watchOutilsStarted()),
      child: LayetteForm(
        user: user,
      ),
    );
  }
}
