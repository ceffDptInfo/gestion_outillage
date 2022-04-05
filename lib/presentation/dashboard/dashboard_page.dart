import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import '../../injection.dart';
import 'widgets/dashboad_form.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        BlocProvider(
          create: (context) => getIt<OutilsWatcherBloc>()
            ..add(const OutilsWatcherEvent.watchOutilsStarted()),
          child:
        const DashboardForm(),);
  }
}
