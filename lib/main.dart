import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'injection.dart' as di;

import 'presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  runApp(const AppWidget());
}
