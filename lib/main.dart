import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:fc_concept/di/injector.dart';
import 'package:feature_auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDi('dev');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthStateBloc>(
      create: (_) => di<AuthStateBloc>(),
      child: BlocBuilder<AuthStateBloc, void>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'FC Concept App',
            theme: AppTheme.themeData(context, Brightness.light),
            darkTheme: AppTheme.themeData(context, Brightness.dark),
            routerConfig: di<GoRouter>(),
            builder: (context, child) {
              return BlocProvider<MetadataBloc>(
                create: (_) => di<MetadataBloc>(),
                child: BlocBuilder<MetadataBloc, MetadataState>(
                  builder: (context, state) {
                    return child!;
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
