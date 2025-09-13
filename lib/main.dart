import 'package:core_ads/ads.dart';
import 'package:core_analytics/analytics.dart';
import 'package:core_api_client/api_client.dart';
import 'package:core_design/design.dart';
import 'package:core_domain/domain.dart';
import 'package:fut_maidaan/di/injector.dart';
import 'package:fut_maidaan/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fut_maidaan/network_overrides.dart';
import 'package:utility_di/di.dart';
import 'package:utility_navigation/navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());
  setupHttpOverrides();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(!kDebugMode);
  await initializeDi('dev');
  PersistentStorageHolder.storage = await CachingPersistentStorage.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FUT Maidaan',
      theme: AppTheme.themeData(context, Brightness.light),
      darkTheme: AppTheme.themeData(context, Brightness.dark),
      debugShowCheckedModeBanner: false,
      routerConfig: di<GoRouter>(),
      builder: (context, child) {
        return Wiredash(
          projectId: wiredashProjectId,
          secret: wiredashSecret,
          environment: kDebugMode ? 'dev' : 'prod',
          feedbackOptions: const WiredashFeedbackOptions(
            email: EmailPrompt.hidden,
            labels: [
              Label(id: 'label-k7o0yp2gmz', title: 'Issue'),
              Label(id: 'label-n7m3f8ezks', title: 'Praise'),
              Label(id: 'label-gjdxoj0pfw', title: 'Improvement'),
            ],
          ),
          psOptions: const PsOptions(
            frequency: Duration(days: 7),
            initialDelay: Duration(days: 1),
            minimumAppStarts: 2,
          ),
          theme: WiredashTheme.wiredashThemeData(context),
          child: BlocProvider<MetadataBloc>(
            create: (_) => di<MetadataBloc>(),
            child: BlocBuilder<MetadataBloc, MetadataState>(
              builder: (context, state) {
                // showWiredashPromoterSurvey(context);
                return child!;
              },
            ),
          ),
        );
      },
    );
  }
}
