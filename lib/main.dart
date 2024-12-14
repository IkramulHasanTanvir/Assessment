import 'package:assessment/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BirGroupHoldings());
}


/*class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    _secureScreen();
  }

  Future<void> _secureScreen() async {
    // Disable screenshots and screen recording
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void dispose() {
    // Remove the secure flag when the widget is disposed
    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const BitGroupHoldings();
  }
}*/
