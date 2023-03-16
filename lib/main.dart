import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Chance Changer');
    setWindowMinSize(const Size(1280, 720));
    setWindowMaxSize(const Size(1280, 720));
  }
  runApp(const MyApp());
}
