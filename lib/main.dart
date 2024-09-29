import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:fc_concept/di/injector.dart';
import 'package:feature_auth/auth.dart';
import 'package:feature_role/role.dart';
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
    return BlocProvider<AuthStateBloc>(
      create: (_) => di<AuthStateBloc>(),
      child: BlocBuilder<AuthStateBloc, void>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: AppTheme.themeData(context, Brightness.light),
            darkTheme: AppTheme.themeData(context, Brightness.dark),
            routerConfig: di<GoRouter>(),
            builder: (context, child) {
              return BlocProvider<RolesBloc>(
                create: (_) => di<RolesBloc>(),
                child: BlocBuilder<RolesBloc, RolesState>(
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
