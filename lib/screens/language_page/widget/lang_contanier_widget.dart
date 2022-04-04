import 'package:flutter/material.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';

class LangContainer extends StatelessWidget {
  final dynamic topBorder;
  final dynamic bottomBorder;
  final dynamic name;
  final dynamic flag;
  final Color rang;
  final Color chiziqRangi;
  const LangContainer(
      {Key? key,
      this.bottomBorder,
      this.topBorder,
      required this.flag,
      required this.rang,
      required this.chiziqRangi,
      this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(80),
      width: getWidth(343),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(topBorder ?? 0),
            bottom: Radius.circular(bottomBorder ?? 0),
          ),
          color: rang,
          border: Border.all(color: chiziqRangi, width: getWidth(1))),
      child: Row(
        children: [
          SizedBox(width: getWidth(16)),
          CircleAvatar(
            radius: getHeight(20),
            backgroundImage: AssetImage(flag),
          ),
          SizedBox(width: getWidth(20)),
          Text(
            name ?? "",
            style: TextStyle(
              fontSize: getHeight(18),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
