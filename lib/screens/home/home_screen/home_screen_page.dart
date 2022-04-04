import 'package:flutter/material.dart';
import 'package:halol_farm/core/components/size_konfig/size_config.dart';
import 'package:halol_farm/core/constants/colors_consts.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.green,
      body: CustomScrollView(
        slivers: [
          sliverAppBar(context),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: getHeight(900),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ConsColors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar sliverAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ConsColors.green,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        background: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: getHeight(50)),
              child: Image.asset(
                "assets/image/halalForm.png",
                height: getHeight(40),
              ),
            ),
          ],
        ),
      ),
      expandedHeight: getHeight(250),
      pinned: false,
      titleTextStyle: TextStyle(color: ConsColors.white),
    );
  }
}
