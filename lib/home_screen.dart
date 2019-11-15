import 'package:dynamic_theme_color/dynamic_theme_widget.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'custom_theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DynamicTheme<CustomTheme> dynamicTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dynamicTheme = DynamicTheme.of<CustomTheme>(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Switch(value: dynamicTheme.themeData.brightness == Brightness.light, onChanged: (newValue) {
              if (newValue) {
                dynamicTheme.changeTheme(ThemeData.light(), CustomTheme.light());
              } else {
                dynamicTheme.changeTheme(ThemeData.dark(), CustomTheme.dark());
              }
            }),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        height: 48,
                        alignment: Alignment.center,
                        color: dynamicTheme.customColor.colorStatus1,
                        child:  Text('Custom Color 1'),
                      ),
                    ),
                    Expanded(
                      child:Container(
                        height: 48,
                        alignment: Alignment.center,
                        color: dynamicTheme.customColor.colorStatus2,
                        child:  Text('Custom Color 2'),
                      ),
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
