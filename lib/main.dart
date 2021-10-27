import 'dart:async';

import 'package:dtumaps/my_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isAuthenticated = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }
  isAuthenticated = await checkIfAuthenticated();
  print("run main");
  runApp(ProviderScope(child: MyApp()));
}

Future<bool> checkIfAuthenticated() async {
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
  return _sharedPreferences.getString("token") != null;
}
