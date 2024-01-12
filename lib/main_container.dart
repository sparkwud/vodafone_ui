import 'package:flutter/material.dart';
import 'package:vodafone_ui/screens/bundles_screen.dart';
import 'package:vodafone_ui/screens/cash_screen.dart';
import 'package:vodafone_ui/screens/grid_homepage.dart';
import 'package:vodafone_ui/screens/list_homepage.dart';
import 'package:vodafone_ui/screens/settings_screen.dart';
import 'package:vodafone_ui/shared/constants.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _HomePageState();
}

class _HomePageState extends State<MainContainer> {
  List<Widget> screens = const [
    // ServicesScreen(),
    ListHomePage(),
    CashScreen(),
    GridHomePage(),
    BundlesScreen(),
    SettingsScreen(),
  ];
  int currentPosition = 2;

  void onItemTapped(int index) {
    setState(() {
      currentPosition = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(color: AppColors.dimGrey),
        selectedLabelStyle: const TextStyle(color: AppColors.vodafoneRed),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.vodafoneRed,
        currentIndex: currentPosition,
        onTap: (index) => onItemTapped(index),
        items: [
          BottomNavigationBarItem(
            label: "services",
            icon: Image.asset(AppIcons.servicesIcon),
            activeIcon: Image.asset(
              AppIcons.servicesIcon,
              color: AppColors.vodafoneRed,
            ),
          ),
          BottomNavigationBarItem(
            label: "cash",
            icon: Image.asset(AppIcons.cashIcon),
            activeIcon: Image.asset(
              AppIcons.cashIcon,
              color: AppColors.vodafoneRed,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(0, -3),
                child: SizedBox(
                  height: 30,
                  child: Image.asset(
                    AppImages.vodafoneTobi,
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "bundles",
            icon: Image.asset(AppIcons.bundlesIcon),
            activeIcon: Image.asset(
              AppIcons.bundlesIcon,
              color: AppColors.vodafoneRed,
            ),
          ),
          BottomNavigationBarItem(
            label: "settings",
            icon: Image.asset(AppIcons.settingsIcon),
            activeIcon: Image.asset(
              AppIcons.settingsIcon,
              color: AppColors.vodafoneRed,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPosition,
        children: screens,
      ),
    );
  }
}
