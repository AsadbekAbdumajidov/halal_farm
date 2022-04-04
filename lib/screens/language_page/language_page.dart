import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';
import 'package:halol_farm/core/widget/contaiener_buttom.dart';
import 'package:halol_farm/screens/language_page/widget/lang_contanier_widget.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  var til = "ru";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FadeInUp(
      child: CupertinoPageScaffold(
        backgroundColor: ConsColors.scaffoldColor,
        child: Padding(
          padding: EdgeInsets.all(getWidth(16)),
          child: Column(
            children: [
              SizedBox(height: getHeight(80), width: getWidth(375)),
              SizedBox(
                height: getHeight(30),
                width: getWidth(100),
                child: Image.asset("assets/image/halaFarmblack.png"),
              ),
              SizedBox(height: getHeight(67)),
              Text(
                'til_tanla'.tr(),
                style: TextStyle(
                  fontSize: getHeight(26),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: getHeight(75),
                child: Text(
                  'til_t_sub'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getHeight(14),
                    fontWeight: FontWeight.w400,
                    color: ConsColors.black.withOpacity(0.6),
                  ),
                ),
              ),
              GestureDetector(
                child: LangContainer(
                  chiziqRangi: til == "uz"
                      ? ConsColors.green.withOpacity(0.3)
                      : ConsColors.white,
                  flag: "assets/image/uzbekistan 1.png",
                  name: "O'zbek tili",
                  topBorder: 30.0,
                  rang: til == "uz"
                      ? ConsColors.green.withOpacity(0.3)
                      : ConsColors.white,
                ),
                onTap: () {
                  til = "uz";
                  context.setLocale(const Locale('uz'));
                },
              ),
              GestureDetector(
                child: LangContainer(
                  chiziqRangi: til == "en"
                      ? ConsColors.green.withOpacity(0.3)
                      : ConsColors.white,
                  flag: "assets/image/united-kingdom 1.png",
                  name: "English",
                  rang: til == "en"
                      ? ConsColors.green.withOpacity(0.3)
                      : ConsColors.white,
                ),
                onTap: () {
                  til = "en";
                  context.setLocale(const Locale('en'));
                },
              ),
              GestureDetector(
                child: LangContainer(
                  chiziqRangi: til == "ru"
                      ? ConsColors.green.withOpacity(0.3)
                      : ConsColors.white,
                  flag: "assets/image/russia 1.png",
                  name: "Русский язык",
                  rang: til == "ru"
                      ? ConsColors.green.withOpacity(0.3)
                      : ConsColors.white,
                  bottomBorder: 30.0,
                ),
                onTap: () {
                  til = "ru";
                  context.setLocale(const Locale('ru'));
                },
              ),
              const Spacer(),
              ContainerButton(
                textColor: ConsColors.white,
                name: "next".tr(),
                color: ConsColors.green,
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/onBording', (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
