import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_crud_app/product_list_screen.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: _lightThemeData(),
      darkTheme: _darkThemeData(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const ProductListScreen(),
    );
  }
  ThemeData _lightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreenAccent)),
        errorBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromWidth(double.maxFinite),
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }

  ThemeData _darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreenAccent)),
        errorBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromWidth(double.maxFinite),
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
