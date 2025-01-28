import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_crud_app/app.dart';


void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const CrudApp(), // Wrap your app
  ),);
}

