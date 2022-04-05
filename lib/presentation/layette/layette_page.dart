import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/presentation/layette/widgets/layette_form.dart';

import '../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import '../../injection.dart';

class LayettePage extends StatelessWidget {
  const LayettePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
          return  BlocProvider(
          create: (context) => getIt<OutilsWatcherBloc>()
            ..add(const OutilsWatcherEvent.watchOutilsStarted()),
          child:
        const LayetteForm()
    ,
    );
  }
}
