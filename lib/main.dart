import 'package:flutter/material.dart';
import 'package:science_dex/DI/injection_dependencies.dart';
import 'package:science_dex/core/service/database/local_database.dart';
import 'package:science_dex/routes/route_generate.dart';
import 'package:science_dex/screens/helper/science_dex_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DI.setupDependencies();
  await SqliteService.initializeDB();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          fontFamily: 'Inter',
          useMaterial3: false,
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: ScienceDexColors.secondaryColor,
            cursorColor: ScienceDexColors.secondaryColor,
          )),
      debugShowCheckedModeBanner: false,
      routerConfig: RouteGenerate.router,
    );
  }
}
