import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:science_dex/DI/injection_dependencies.dart';
import 'package:science_dex/routes/route_generate.dart';
import 'package:science_dex/screens/helper/science_dex_colors.dart';
import 'package:science_dex/screens/profile/configuration/configuration_model.dart';
import 'package:science_dex/screens/profile/period/period_model.dart';

void main() {
  DI.setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ConfigurationModel()),
        ChangeNotifierProvider(create: (_) => PeriodModel()),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
            fontFamily: 'Inter',
            useMaterial3: false,
            textSelectionTheme: TextSelectionThemeData(
              selectionHandleColor: ScienceDexColors.secondaryColor,
              cursorColor: ScienceDexColors.secondaryColor,
            )),
        debugShowCheckedModeBanner: false,
        routerConfig: RouteGenerate.router,
      ),
    );
  }
}
