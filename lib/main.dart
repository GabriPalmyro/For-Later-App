import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:for_later_app/app/common/link_embeder/service/link_embeder_service.dart';
import 'package:for_later_app/app/common/router/app_routes.dart';
import 'package:for_later_app/app/common/router/router_config.dart';
import 'package:for_later_app/app/di/injection.dart';
import 'package:for_later_app/app/features/home/presentation/provider/shares_provider.dart';
import 'package:for_later_app/app/utils/strings.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final GetIt getIt = GetIt.instance;

  await configureAppDependencies(getIt, routes);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouterConfig router = GetIt.I();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SharesProvider>(
          create: (_) => SharesProvider(
            GetIt.I.get<LinkEmbederService>()..initListenToSharedLinks(),
          ),
          lazy: false,
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        darkTheme: ThemeData.dark(useMaterial3: true),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', ''),
          Locale('en', ''),
        ],
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        title: AppStrings.title,
      ),
    );
  }
}
