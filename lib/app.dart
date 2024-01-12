import 'package:flutter/material.dart';
import 'package:vodafone_ui/components/bottom_nav_item.dart';
import 'package:vodafone_ui/screens/bundles_screen.dart';
import 'package:vodafone_ui/screens/cash_screen.dart';
import 'package:vodafone_ui/screens/grid_homepage.dart';
import 'package:vodafone_ui/screens/services_screen.dart';
import 'package:vodafone_ui/screens/settings_screen.dart';
import 'package:vodafone_ui/shared/constants.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Widget> pages = const [
    ServicesScreen(),
    CashScreen(),
    GridHomePage(),
    BundlesScreen(),
    SettingsScreen(),
  ];
  int selectedIndex = 2;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pages[selectedIndex],
      body: PageView(
        controller: _myPage,
        // onPageChanged: (int) {
        //   print('Page Changes to index $int');
        // },
        physics: const NeverScrollableScrollPhysics(),
        children: pages,
      ),

      bottomNavigationBar: BottomAppBar(
        notchMargin: -50,
        // height: 68,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavItem(
              label: "Services",
              iconPath: AppIcons.servicesIcon,
              onTap: () {
                setState(() {
                  _myPage.jumpToPage(0);
                });
              },
            ),
            BottomNavItem(
              label: "Cash",
              iconPath: AppIcons.cashIcon,
              onTap: () {
                setState(() {
                  _myPage.jumpToPage(1);
                });
              },
            ),
            BottomNavItem(
              label: "Bundles",
              iconPath: AppIcons.bundlesIcon,
              onTap: () {
                setState(() {
                  _myPage.jumpToPage(3);
                });
              },
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _myPage.jumpToPage(4);
                });
              },
              child: const BottomNavItem(
                label: "Settings",
                iconPath: AppIcons.settingsIcon,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => setState(() {
          _myPage.jumpToPage(2);
        }),
        splashColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Image.asset(
          AppImages.vodafoneTobi,
          // height: 500,
          // width: 500,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: selectedIndex,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.devices,
      //         color: AppColors.dimGray,
      //       ),
      //       activeIcon: Icon(
      //         Icons.devices,
      //         color: AppColors.vodafoneRed,
      //       ),
      //       label: 'Services',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.money,
      //         color: AppColors.dimGray,
      //       ),
      //       activeIcon: Icon(
      //         Icons.money,
      //         color: AppColors.vodafoneRed,
      //       ),
      //       label: 'Cash',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.transparent,
      //         size: 1,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.add_circle_outline,
      //         color: AppColors.dimGray,
      //       ),
      //       activeIcon: Icon(
      //         Icons.add_circle_outline,
      //         color: AppColors.vodafoneRed,
      //       ),
      //       label: 'Bundles',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.settings_outlined,
      //         color: AppColors.dimGray,
      //       ),
      //       activeIcon: Icon(
      //         Icons.settings_outlined,
      //         color: AppColors.vodafoneRed,
      //       ),
      //       label: 'Settings',
      //     ),
      //   ],
      //   selectedItemColor: AppColors.vodafoneRed,
      //   onTap: onItemTapped,
      // ),
    );
  }
}
