import 'package:core_design/design.dart';
import 'package:fc_concept/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDi('dev');

  // final getClubs = di<GetClubsUseCase>();
  // final getLeagues = di<GetLeaguesUseCase>();
  // final getNations = di<GetNationsUseCase>();
  // final nations = await getNations(page: 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.themeData(context, Brightness.light),
      darkTheme: AppTheme.themeData(context, Brightness.dark),
      routerConfig: di<GoRouter>(),
    );
  }
}
