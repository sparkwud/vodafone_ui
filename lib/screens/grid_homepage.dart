import 'package:flutter/material.dart';
import 'package:vodafone_ui/components/home_grid_item.dart';
import 'package:vodafone_ui/shared/app_styles.dart';
import 'package:vodafone_ui/shared/constants.dart';
import 'package:vodafone_ui/shared/extensions/string_extensions.dart';
import 'package:vodafone_ui/shared/extensions/widget_extensions.dart';

class GridHomePage extends StatefulWidget {
  const GridHomePage({super.key});

  @override
  State<GridHomePage> createState() => _GridHomePageState();
}

class _GridHomePageState extends State<GridHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Image.asset(AppIcons.vodafoneIconPng),
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
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        children: [
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 16,
            ),
            children: [
              HomeGridItem(
                icon: Image.asset(AppIcons.wirelessIcon),
                title: Text(
                  "Your data",
                  style: AppStyles().cardSubtitle,
                ),
                subtitle: RichText(
                  text: TextSpan(
                    text: '20.34 ',
                    // style: TextStyle(fontSize: 15, color: Colors.black),
                    style: AppStyles().cardTitle,
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'GB',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              HomeGridItem(
                icon: Image.asset(AppIcons.simIcon),
                title: Text(
                  "Your airtime balance",
                  style: AppStyles().cardSubtitle,
                ),
                subtitle: Row(
                  children: [
                    Image.asset(AppIcons.cediIcon),
                    3.0.sbW,
                    Text(
                      "4.32",
                      style: AppStyles().cardTitle,
                    ),
                  ],
                ),
              ),
              HomeGridItem(
                icon: Image.asset(
                  AppIcons.bookmarkIcon,
                ),
                title: Text(
                  "Pay Bills",
                  style: AppStyles().cardTitle,
                ),
                subtitle: Text(
                  "Make payments for your postpaid services",
                  maxLines: 2,
                  style: AppStyles().cardSubtitle,
                ),
              ),
            ],
          ),
          36.0.sbH,
          Text(
            "Manage",
            style: AppStyles().title,
          ),
          16.0.sbH,
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 16,
            ),
            children: [
              HomeGridItem(
                icon: Image.asset(
                  AppIcons.plusIcon,
                ),
                title: Text(
                  "Top Up Airtime Or Data ",
                  style: AppStyles().cardTitle,
                  maxLines: 2,
                ),
              ),
              HomeGridItem(
                icon: Image.asset(
                  AppIcons.phoneIcon,
                ),
                title: Text(
                  "My Subscriptions\n",
                  style: AppStyles().cardTitle,
                  maxLines: 2,
                ),
              ),
              HomeGridItem(
                icon: Image.asset(
                  AppIcons.vasIcon,
                ),
                title: Text(
                  "Value-Added Services",
                  style: AppStyles().cardTitle,
                  maxLines: 2,
                ),
              ),
              HomeGridItem(
                icon: Image.asset(
                  AppIcons.rewardIcon,
                ),
                title: Text(
                  "Red Loyalty Rewards",
                  style: AppStyles().cardTitle,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
