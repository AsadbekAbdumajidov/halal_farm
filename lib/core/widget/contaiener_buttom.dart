import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';

class ContainerButton extends StatelessWidget {
  final dynamic top;
  final dynamic bottom;
  final dynamic name;
  final dynamic onTap;
  final dynamic color;
  final Color textColor;
  const ContainerButton(
      {Key? key, this.name, this.bottom, this.top, this.onTap, this.color,required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: top ?? 0,
          bottom: bottom ?? 0,
        ),
        height: getHeight(56),
        width: getWidth(343),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: color ?? ConsColors.green,
        ),
        child: Center(
          child: Text(
            name ?? " ",
            style: TextStyle(
              color: textColor,
              fontSize: getHeight(18),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onTap: onTap ?? () {},
    );
  }
}
