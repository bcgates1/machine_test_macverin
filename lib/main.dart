import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:machine_test_macverin/style/global.dart';

import 'ticket_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set global screen dimensions using MediaQuery.
    Global.sH = MediaQuery.of(context).size.height;
    Global.sW = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const TicketUi(),
    );
  }
}
