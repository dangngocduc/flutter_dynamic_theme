import 'package:flutter/material.dart';

class DynamicThemeWidget<T> extends StatefulWidget {

  final Widget child;

  final T initCustomColor;

  final ThemeData initThemeData;

  final Locale initLocale;

  DynamicThemeWidget({
    @required this.child, @required this.initCustomColor, @required this.initThemeData, @required this.initLocale});

  @override
  _DynamicThemeWidgetState<T> createState() => _DynamicThemeWidgetState<T>();
}

class _DynamicThemeWidgetState<T> extends State<DynamicThemeWidget<T>> {

  T _customColor;

  ThemeData _themeData;

  Locale _locale;

  ThemeData get themeData => _themeData;

  T get customColor => _customColor;

  Locale get locale => _locale;



  @override
  void initState() {
    super.initState();
    _customColor = widget.initCustomColor;
    _themeData = widget.initThemeData;
    _locale = widget.initLocale;
  }

  void changeLanguage(Locale locale) {
    setState(() {
      this._locale = locale;
    });
  }

  void changeTheme(ThemeData themeData, T customColor) {
    setState(() {
      this._themeData = themeData;
      this._customColor = customColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DynamicTheme<T>(
      child: widget.child,
      value: this,
    );
  }
}


class DynamicTheme<T> extends InheritedWidget {

  final _DynamicThemeWidgetState value;

  ThemeData get themeData => value.themeData;

  T get customColor => value.customColor;

  Locale get locale => value.locale;

  void changeTheme(ThemeData themeData, T customColor) {
    value.changeTheme(themeData, customColor);
  }

  void changeLanguage(Locale locale) {
    value.changeLanguage(locale);
  }

  DynamicTheme({
    Key key,
    @required this.value,
    @required Widget child,
  }) : assert(value != null), assert(child != null), super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Type _typeOf<T>() => T;

  static DynamicTheme of<T>(BuildContext context) {

    final type = _typeOf<DynamicTheme<T>>();

    return context.inheritFromWidgetOfExactType(type) as DynamicTheme;
  }
}