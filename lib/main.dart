import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(
  //   MultiProvider(
  //     providers: [],
  //     child: const MyApp(),
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        onGenerateRoute: AppPages.generateRoutePages,
      ),
    );
  }
}
