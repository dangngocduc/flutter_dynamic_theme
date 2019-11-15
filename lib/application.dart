import 'package:dynamic_theme_color/dynamic_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/custom_theme.dart';
import 'dart:developer' as developer;

import 'package:flutter_dynamic_theme/home_screen.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Application ${DynamicTheme.of<CustomTheme>(context)}');
    return  MaterialApp(
      initialRoute: 'main',
      theme: DynamicTheme.of<CustomTheme>(context).value.themeData,
      routes: {
        'main': (context) => HomeScreen(),
      },
    );
  }
}



