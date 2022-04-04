import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';
import 'package:halol_farm/core/widget/contaiener_buttom.dart';

class AkkountgaKirishPage extends StatelessWidget {
  const AkkountgaKirishPage({Key? key}) : super(key: key);
  static TextEditingController? number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getHeight(40), bottom: getHeight(31)),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: ConsColors.blue,
                    size: getHeight(27),
                  ),
                ),
                Text(
                  'orqaga'.tr(),
                  style: TextStyle(
                      color: ConsColors.blue, fontSize: getHeight(17)),
                ),
                SizedBox(
                  width: getWidth(20),
                ),
                Text(
                  "akkgaKirish".tr(),
                  style: TextStyle(
                      color: ConsColors.black, fontSize: getHeight(18)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(22)),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: number,
              decoration: InputDecoration(hintText: "number".tr()),
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                "tarmoq".tr(),
                style: TextStyle(
                    color: ConsColors.black.withOpacity(0.5),
                    fontSize: getHeight(15)),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Container(
                height: getHeight(56),
                width: getWidth(343),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: ConsColors.pink,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/google.png",
                      height: getHeight(30),
                    ),
                    SizedBox(
                      width: getWidth(20),
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: ConsColors.black,
                        fontSize: getHeight(18),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: getHeight(12), bottom: getHeight(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getHeight(56),
                      width: getWidth(166),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        color: ConsColors.pink,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/apple.png",
                            height: getHeight(30),
                          ),
                          SizedBox(
                            width: getWidth(20),
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(
                              color: ConsColors.black,
                              fontSize: getHeight(18),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: getWidth(10),
                    ),
                    Container(
                      height: getHeight(56),
                      width: getWidth(166),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        color: ConsColors.pink,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/facebook.png",
                            height: getHeight(30),
                          ),
                          SizedBox(
                            width: getWidth(20),
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(
                              color: ConsColors.black,
                              fontSize: getHeight(18),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ContainerButton(
                name: "next".tr(),
                color: ConsColors.white,
                textColor: ConsColors.black,
                onTap: () {
                  Navigator.pushNamed(context, "/sms");
                },
              ),
              SizedBox(
                height: getHeight(10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
