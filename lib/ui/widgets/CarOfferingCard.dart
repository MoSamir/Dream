
import 'package:dream_soft/data_providers/models/CarViewModel.dart';
import 'package:dream_soft/utilities/LocalKeys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
class CarOfferingCard extends StatelessWidget {


  final Function onCardPressed ;
  final CarViewModel carModel ;
  CarOfferingCard({this.onCardPressed , this.carModel });



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8) , topRight: Radius.circular(8)),
              child: FittedBox(child: SizedBox(
                  width: 300,
                  height: 150,
                  child: Image.network(carModel.carImagePath , fit: BoxFit.fill,  ))),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(carModel.carName),
                  Text((LocalKeys.PRICE_START_FROM_WITH_PRICE).tr(args:[
                    carModel.carPrice,
                  ])),
                ],
              ),
            ),
          ],
        )

        ),
    );
  }
}
