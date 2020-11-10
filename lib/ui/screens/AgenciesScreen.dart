import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class AgenciesScreen extends StatefulWidget {
  @override
  _AgenciesScreenState createState() => _AgenciesScreenState();
}

class _AgenciesScreenState extends State<AgenciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text((LocalKeys.BOTTOM_BAR_AGENCIES_TITLE).tr()),
      ),
    );
  }
}
