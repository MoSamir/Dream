import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class InsuranceScreen extends StatefulWidget {
  @override
  _InsuranceScreenState createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text((LocalKeys.BOTTOM_BAR_INSURANCE_TITLE).tr()),
      ),
    );
  }
}
