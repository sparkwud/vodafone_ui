import 'package:flutter/material.dart';
import 'package:vodafone_ui/screens/grid_homepage.dart';
import 'package:vodafone_ui/screens/list_homepage.dart';
import 'package:vodafone_ui/shared/app_styles.dart';
import 'package:vodafone_ui/shared/constants.dart';
import 'package:vodafone_ui/shared/extensions/string_extensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _ListHomePageState();
}

bool gridView = true;

class _ListHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () => setState(() {
              gridView = !gridView;
            }),
            child: Image.asset(AppIcons.vodafoneIconPng),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Image.asset(AppIcons.notificationIcon),
          )
        ],
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          "Kisa".greetFirstName,
          style: AppStyles().appbarTitle,
        ),
      ),
      body: gridView ? const GridHomePage() : const ListHomePage(),
    );
  }
}
