import 'package:dream_soft/ui/screens/LandingScreen.dart';
import 'package:dream_soft/utilities/Constants.dart';
import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('en'), Locale('ar')],
      startLocale: Locale('ar'),
      useOnlyLangCode: true,
      path: 'assets/locales',
    ));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constants.appLocale = EasyLocalization.of(context).locale.languageCode;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: (LocalKeys.APP_NAME).tr(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LandingScreen(),
    );
  }
}
