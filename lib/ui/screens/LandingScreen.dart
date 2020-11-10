import 'package:dream_soft/ui/screens/AgenciesScreen.dart';
import 'package:dream_soft/ui/screens/InsuranceScreen.dart';
import 'package:dream_soft/ui/screens/PricingScreen.dart';
import 'package:dream_soft/ui/screens/ServicesScreen.dart';
import 'package:dream_soft/utilities/Constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  int activeScreenIndex = 0 ;

  final List<BottomNavigationBarItem> bottomBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      activeIcon: Icon(Icons.business),
      label: (LocalKeys.BOTTOM_BAR_AGENCIES_TITLE).tr(),
      backgroundColor: AppColors.APP_THEME,


    ),
    BottomNavigationBarItem(

      icon: Icon(Icons.monetization_on_outlined),
      activeIcon: Icon(Icons.monetization_on_outlined),
      label: (LocalKeys.BOTTOM_BAR_PRICING_TITLE).tr(),
      backgroundColor: AppColors.APP_THEME,


    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.save_outlined),
      activeIcon: Icon(Icons.save_outlined),
      label: (LocalKeys.BOTTOM_BAR_INSURANCE_TITLE).tr(),
      backgroundColor: AppColors.APP_THEME,


    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.directions_car),
      activeIcon: Icon(Icons.directions_car),
      label: (LocalKeys.BOTTOM_BAR_SERVICES_TITLE).tr(),
        backgroundColor: AppColors.APP_THEME,
    ),
  ];
  final List<Widget> bottomBarWidgets = [
    AgenciesScreen(),
    PricingScreen(),
    InsuranceScreen(),
    ServicesScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeScreenIndex,
        backgroundColor: AppColors.APP_THEME,
        unselectedItemColor: AppColors.LIGHT_GREY,
        elevation: 1,
        items: bottomBarItems,
        showUnselectedLabels: true,
        onTap: (int tapIndex){
          setState(() {
            activeScreenIndex = tapIndex;
          });
        },
      ),
      body: bottomBarWidgets[activeScreenIndex],
    );
  }
}
