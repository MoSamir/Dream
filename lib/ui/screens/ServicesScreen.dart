import 'package:dream_soft/data_providers/models/BrandViewModel.dart';
import 'package:dream_soft/data_providers/models/CarViewModel.dart';
import 'package:dream_soft/ui/widgets/BrandCard.dart';
import 'package:dream_soft/ui/widgets/CarOfferingCard.dart';
import 'package:dream_soft/ui/widgets/NavigationDrawer.dart';
import 'package:dream_soft/utilities/Constants.dart';
import 'package:dream_soft/utilities/LocalKeys.dart';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart' as el;
class ServicesScreen extends StatefulWidget {


  final List<CarViewModel> carModels = [
    CarViewModel(
      carImagePath: 'https://www.extremetech.com/wp-content/uploads/2019/12/SONATA-hero-option1-764A5360-edit.jpg',
      carPrice: 132545.toString(),
      carName: 'Audi A8'
    ),
    CarViewModel(
        carImagePath: 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
        carPrice: 132588845.toString(),
        carName: 'Ferrari XYZ'
    ),
    CarViewModel(
        carImagePath: 'https://media.wired.com/photos/5d09594a62bcb0c9752779d9/master/pass/Transpo_G70_TA-518126.jpg',
        carPrice: 13258845.toString(),
        carName: 'Audi A8'
    ),

  ];

  final List<BrandViewModel> typesList = [
    BrandViewModel(
      brandName: 'Wegan',
      brandImage: 'https://i.pinimg.com/originals/2b/da/a1/2bdaa17fab3310202c4df1a3e56b27a6.png'
    ),
    BrandViewModel(
        brandName: 'SUV',
        brandImage: 'https://i.pinimg.com/originals/2b/da/a1/2bdaa17fab3310202c4df1a3e56b27a6.png'
    ),
    BrandViewModel(
        brandName: 'Sedan',
        brandImage: 'https://i.pinimg.com/originals/2b/da/a1/2bdaa17fab3310202c4df1a3e56b27a6.png'
    ),
    BrandViewModel(
        brandName: 'Hatchback',
        brandImage: 'https://i.pinimg.com/originals/2b/da/a1/2bdaa17fab3310202c4df1a3e56b27a6.png'
    ),
  ];


  final List<BrandViewModel> brandsList = [
    BrandViewModel(
        brandImage: 'https://c0.klipartz.com/pngpicture/75/333/sticker-png-nissan-car-chrysler-logo-nissan-emblem-trademark.png'
    ),
    BrandViewModel(
        brandImage: 'https://e7.pngegg.com/pngimages/466/735/png-clipart-chevrolet-general-motors-car-logo-cars-logo-brands-emblem-angle.png'
    ),
    BrandViewModel(
        brandImage: 'https://e7.pngegg.com/pngimages/349/62/png-clipart-opel-astra-general-motors-opel-kadett-car-opel-angle-logo.png'
    ),
    BrandViewModel(
        brandImage: 'https://icon2.cleanpng.com/20180412/kqw/kisspng-ford-motor-company-car-ford-model-a-ford-ikon-car-logo-5acfc18d0da803.5309263215235649410559.jpg'
    ),
    BrandViewModel(
        brandImage: 'https://cdn.iconscout.com/icon/free/png-512/bmw-5-202750.png'
    ),
  ];


  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  GlobalKey<ScaffoldState> _scaffoldGlobalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        key: _scaffoldGlobalKey,
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: Column(
              children: [
               Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .25,
                  child: getScreenHeader(),
                ),
               Container(
                 padding: EdgeInsets.only(top: 4),
                 child: _browsByCarType(),
               ),
               Container(
                  padding: EdgeInsets.only(top: 4),
                  child: _browsByCarBrand(),
                ),
                Container(
                  padding: EdgeInsets.only(top: 4),
                  child: _newFromAgencies(),
                ),
                Container(
                  padding: EdgeInsets.only(top: 4),
                  child: _videosWidget(),
                ),
                Padding(
                 padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                ),

              ],
            )
        ),
      ),
    );
  }

  Widget getScreenHeader() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(Constants.coverImageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _drawerMenuButton(),
              _notificationIcon(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _notificationIcon() {
    return Container(
      width: 50,
      height: 50,
      child: Stack(
        children: [
          Center(
              child: Icon(
                Icons.add_alert,
                size: 25,
                color: Colors.white,
              )),
          Positioned.directional(
            textDirection: TextDirection.rtl,
            top: 5,
            start: 5,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text('12' , style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _drawerMenuButton() {
    return IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      onPressed: () {
        if (_scaffoldGlobalKey.currentState.isDrawerOpen == false) {
          _scaffoldGlobalKey.currentState.openDrawer();
        } else {
          Navigator.pop(context);
        }
      },
    );
  }

  Widget _browsByCarType() {

    return Container(
      color: Colors.white,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text((LocalKeys.BROWSE_BY_TYPE).tr()),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.typesList.length,
              itemBuilder: (BuildContext context, int index) {
                return BrandCard(
                  onCardPressed: (){},
                  withBorder: false,
                  brandModel: widget.typesList[index],
                );
              },

            ),
          ),

        ],
      ),
    );

  }
  Widget _browsByCarBrand() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text((LocalKeys.BROWSE_BY_TYPE).tr()),
                FlatButton(
                  color: Colors.white,
                  onPressed: (){},
                  child: Text((LocalKeys.VIEW_ALL_LABEL).tr()),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.brandsList.length,
              itemBuilder: (BuildContext context, int index) {
                return BrandCard(
                  onCardPressed: (){},
                  withBorder: true,
                  brandModel: widget.brandsList[index],
                );
              },

            ),
          ),

        ],
      ),
    );

  }

  Widget _newFromAgencies() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text((LocalKeys.NEW_FROM_AGENCIES).tr()),
                FlatButton(
                  color: Colors.white,
                  onPressed: (){},
                  child: Text((LocalKeys.VIEW_ALL_LABEL).tr()),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.carModels.length,
              itemBuilder: (BuildContext context, int index) {
                return CarOfferingCard(
                  onCardPressed: (){},
                  carModel: widget.carModels[index],
                );
              },

            ),
          ),

        ],
      ),
    );

  }

  Widget _videosWidget() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text((LocalKeys.VIDEOS_LABEL).tr()),
                FlatButton(
                  color: Colors.white,
                  onPressed: (){},
                  child: Text((LocalKeys.VIEW_ALL_LABEL).tr()),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.carModels.length,
              itemBuilder: (BuildContext context, int index) {
                return CarOfferingCard(
                  onCardPressed: (){},
                  carModel: widget.carModels[index],
                );
              },

            ),
          ),
        ],
      ),
    );

  }



}
