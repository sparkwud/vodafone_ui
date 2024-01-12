import 'package:flutter/material.dart';
import 'package:vodafone_ui/components/data_usage_card.dart';
import 'package:vodafone_ui/components/home_grid_item.dart';
import 'package:vodafone_ui/components/home_list_item.dart';
import 'package:vodafone_ui/shared/app_styles.dart';
import 'package:vodafone_ui/shared/constants.dart';
import 'package:vodafone_ui/shared/extensions/widget_extensions.dart';

class ListHomePage extends StatefulWidget {
  const ListHomePage({super.key});

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        children: [
          const DataUsageCard(),
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
                      "${AppStrings.airtimeBalance}",
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
          HomeListItem(
            leading: Image.asset(
              AppIcons.plusIcon,
            ),
            title: "Top Up Airtime Or Data ",
            subtitle: "Recharge airtime or data to this phone",
          ),
          HomeListItem(
            leading: Image.asset(
              AppIcons.phoneIcon,
            ),
            title: "My Subscriptions",
            subtitle: "Manage all your subscriptions ",
          ),
          HomeListItem(
            leading: Image.asset(
              AppIcons.vasIcon,
            ),
            title: "Value-Added Services",
            subtitle: "View value added services",
          ),
          HomeListItem(
            leading: Image.asset(
              AppIcons.rewardIcon,
            ),
            title: "Red Loyalty Rewards",
            subtitle: "Claim your loyalty point rewards",
          ),
        ],
      ),
    );
  }
}
