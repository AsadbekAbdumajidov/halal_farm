import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';
import 'package:halol_farm/core/widget/contaiener_buttom.dart';

class SmsKodPage extends StatefulWidget {
  const SmsKodPage({Key? key}) : super(key: key);
  static TextEditingController? sms = TextEditingController();

  @override
  State<SmsKodPage> createState() => _SmsKodPageState();
}

class _SmsKodPageState extends State<SmsKodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ConsColors.scaffoldColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close_outlined,
            color: ConsColors.black,
            size: getHeight(25),
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: getHeight(30), bottom: getHeight(10)),
          child: Text(
            "smsTitle".tr(),
            style: TextStyle(
              color: ConsColors.black,
              fontSize: getHeight(24),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "smsSubtitle".tr(),
          style: TextStyle(
            color: ConsColors.black.withOpacity(0.5),
            fontSize: getHeight(14),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(140),
            vertical: getHeight(40),
          ),
          child: TextFormField(
            controller: SmsKodPage.sms,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration.collapsed(
              hintText: "sms code",
            ),
          ),
        ),
        Text(
          "smsDate".tr(),
          style: TextStyle(
            color: ConsColors.black.withOpacity(0.5),
            fontSize: getHeight(14),
          ),
        ),
        const Spacer(),
        ContainerButton(
          name: "next".tr(),
          color: SmsKodPage.sms!.text.isEmpty
              ? ConsColors.white
              : ConsColors.green.withOpacity(0.8),
          textColor: SmsKodPage.sms!.text.isEmpty
              ? ConsColors.black
              : ConsColors.white,
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/bottom", (route) => false);
          },
        ),
        SizedBox(
          height: getHeight(20),
        )
      ]),
    );
  }
}
