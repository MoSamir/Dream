import 'package:dream_soft/data_providers/models/BrandViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrandCard extends StatelessWidget {


  final Function onCardPressed ;
  final bool withBorder;
  final BrandViewModel brandModel ;
  BrandCard({this.onCardPressed , this.brandModel , this.withBorder});



  @override
  Widget build(BuildContext context) {

    bool itemHasName = brandModel.brandName != null && brandModel.brandName.length > 0 ;

    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(
                width: withBorder ? .5 : 0 ,
                color: withBorder ? Colors.black12 : Colors.transparent,
              )
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(brandModel.brandImage , fit: BoxFit.cover, width: 100, height: itemHasName ? 50 : 80,),
                Visibility(
                  visible: itemHasName,
                  replacement: Container(width: 0, height: 0,),
                  child: Text(brandModel.brandName ?? '' , style: TextStyle(
                    fontSize: 12,
                  ),),
                ),
              ],
            )),

      ),
    );
  }
}
