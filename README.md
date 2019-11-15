# flutter_dynamic_theme

A new Flutter Demo Application for Dynamic Custom Theme

## Getting Started
### 1, Define DynamicThemeWidget with init value for ThemeData, CustomTheme, Locale
```dart
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
```

### 2, Using DynamicTheme 
```dart
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dynamicTheme = DynamicTheme.of<CustomTheme>(context);
  }
```

### 3, Change DynamicTheme value
```dart
    Switch(value: dynamicTheme.themeData.brightness == Brightness.light, onChanged: (newValue) {
      if (newValue) {
        dynamicTheme.changeTheme(ThemeData.light(), CustomTheme.light());
      } else {
        dynamicTheme.changeTheme(ThemeData.dark(), CustomTheme.dark());
      }
    })
```

## Demo
![Demo Video](./2019_11_15_14_33_22.mp4)|