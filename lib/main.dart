import 'package:dynamic_theme_color/dynamic_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/application.dart';
import 'package:flutter_dynamic_theme/custom_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicThemeWidget(
      initCustomColor: CustomTheme.light(),
      initThemeData: ThemeData.light(),
      initLocale: Locale('vi', 'VN'),
      child: Application(),
    );
  }
}
