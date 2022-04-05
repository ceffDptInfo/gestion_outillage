import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/core/app_widget.dart';

// FTP :

// Host : mrck.ftp.infomaniak.com
// User : mrck_monceff
// Passwd : c-aAG96rpR0

// MYSQL :

// Host : mrck.myd.infomaniak.com
// Base : mrck_mc_tools
// User : mrck_monceff
// Passwd : N-E8xuGKqN6

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
