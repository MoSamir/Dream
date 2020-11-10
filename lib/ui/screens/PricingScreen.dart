import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class PricingScreen extends StatefulWidget {
  @override
  _PricingScreenState createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text((LocalKeys.BOTTOM_BAR_PRICING_TITLE).tr()),
      ),
    );
  }
}
