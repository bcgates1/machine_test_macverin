import 'package:flutter/material.dart';
import 'package:machine_test_macverin/screens/style/global.dart';

import 'screens/your_tickets_screen/ticket_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Set global screen dimensions using MediaQuery.
    Global.sH = MediaQuery.of(context).size.height;
    Global.sW = MediaQuery.of(context).size.width;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicketUi(),
    );
  }
}
