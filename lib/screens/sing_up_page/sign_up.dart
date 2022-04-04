import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';
import 'package:halol_farm/core/widget/contaiener_buttom.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: CupertinoPageScaffold(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: ConsColors.green,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(16), vertical: getHeight(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/bottom", (route) => false);
                        },
                        child: Text(
                          'scip'.tr(),
                          style: TextStyle(
                            color: ConsColors.white,
                            fontSize: getHeight(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(80)),
                  child: Image.asset(
                    "assets/image/halalForm.png",
                    height: getHeight(55),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getHeight(70), bottom: getHeight(10)),
                  child: Text(
                    'signUp1Title'.tr(),
                    style: TextStyle(
                      color: ConsColors.white,
                      fontSize: getHeight(30),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'signUp1Subtitle'.tr(),
                  style: TextStyle(
                    color: ConsColors.white.withOpacity(0.6),
                    fontSize: getHeight(16),
                  ),
                ),
                SizedBox(
                  height: getHeight(120),
                ),
                Column(
                  children: [
                    ContainerButton(
                      name: "royxatdanOtish".tr(),
                      color: ConsColors.white,
                      textColor: ConsColors.black,
                      onTap: () {
                        Navigator.pushNamed(context, "/royxatdanOtish");
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(80)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/akkgaKirish");
                        },
                        child: Text(
                          'akkgaKirish'.tr(),
                          style: TextStyle(
                            color: ConsColors.white,
                            fontSize: getHeight(17),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
