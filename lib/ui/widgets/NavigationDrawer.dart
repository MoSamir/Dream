import 'package:dream_soft/ui/screens/LandingScreen.dart';
import 'package:dream_soft/utilities/Constants.dart';
import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Stack(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Text((LocalKeys.APP_NAME).tr()),

                IconButton(
                  icon: Icon(Icons.language),
                  onPressed: (){
                    if(Constants.appLocale == "en"){
                      Constants.appLocale = "ar";
                    } else {
                      Constants.appLocale = "en";
                    }

                    setState(() {
                      EasyLocalization.of(context).locale = Locale(Constants.appLocale);
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> LandingScreen()), (route) => false);
                    });
                  },
                ),

              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Text('Mohamed Samir ...' , textAlign: TextAlign.center,),
          )

        ],
      ),
    );
  }
}
