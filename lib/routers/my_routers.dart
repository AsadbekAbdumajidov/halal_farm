import 'package:flutter/material.dart';
import 'package:halol_farm/core/components/bottomBar/bottom_bar.dart';
import 'package:halol_farm/screens/akkountga_kirish_page/akkountga_kirish_page.dart';
import 'package:halol_farm/screens/language_page/language_page.dart';
import 'package:halol_farm/screens/onboarding_page/onboarding.dart';
import 'package:halol_farm/screens/royxatdan_otish_page/royxatdan_otish_page.dart';
import 'package:halol_farm/screens/sing_up_page/sign_up.dart';
import 'package:halol_farm/screens/sms_kod_page/sms_kode_page.dart';
import 'package:halol_farm/screens/splashe_page/splash_page.dart';

class MyRouter {
  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case '/lang':
        return MaterialPageRoute(builder: (_) => const LanguagePage());

      case '/onBording':
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case '/royxatdanOtish':
        return MaterialPageRoute(builder: (_) => const RoyxatdanOtishPage());
      case '/akkgaKirish':
        return MaterialPageRoute(builder: (_) => const AkkountgaKirishPage());
      case '/sms':
        return MaterialPageRoute(builder: (_) => const SmsKodPage());
      case '/bottom':
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
    }
    return null;
  }
}
