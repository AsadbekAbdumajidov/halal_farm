import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';
import 'package:halol_farm/core/widget/contaiener_buttom.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int sanoq = 1;
  String rasm = "assets/image/onboarding1.png";
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Scaffold(
        backgroundColor: ConsColors.scaffoldColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: getHeight(348),
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(rasm), fit: BoxFit.contain),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getHeight(32),
                      bottom: getHeight(25),
                      left: getWidth(25),
                      right: getWidth(25)),
                  child: Text(
                    
                    'onBoarding$sanoq'.tr(),
                    style: TextStyle(
                      fontSize: getHeight(22),
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        sanoq == 1
                            ? Icons.fiber_manual_record
                            : Icons.fiber_manual_record_outlined,
                        color: ConsColors.blue),
                    Icon(
                        sanoq == 2
                            ? Icons.fiber_manual_record
                            : Icons.fiber_manual_record_outlined,
                        color: ConsColors.blue),
                    Icon(
                        sanoq == 3
                            ? Icons.fiber_manual_record
                            : Icons.fiber_manual_record_outlined,
                        color: ConsColors.blue),
                  ],
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: getHeight(105), bottom: getHeight(16)),
              child: ContainerButton(
                name: "next".tr(),
                color: ConsColors.green,
                textColor: ConsColors.white,
                onTap: () {
                  if (sanoq != 3) {
                    sanoq += 1;
                  } else {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/signUp", (route) => false);
                  }
                  if (sanoq == 2) {
                    rasm = "assets/image/onboarding2.png";
                  } else if (sanoq == 3) {
                    rasm = "assets/image/onboarding3.png";
                  }
    
                  setState(() {});
                  debugPrint("$sanoq");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
