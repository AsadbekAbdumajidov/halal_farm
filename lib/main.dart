import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/routers/my_routers.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en"),Locale("ru"),Locale("uz")],
      path: "assets/lang",
      fallbackLocale: const Locale('uz'),
      startLocale: const Locale('uz'),
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  
  final _forRouter = MyRouter();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Halol Farm',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CupertinoThemeData(primaryColor: ConsColors.green),
      initialRoute: '/',
      onGenerateRoute: _forRouter.getRoute,
    );
  }
}

