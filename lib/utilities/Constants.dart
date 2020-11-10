import 'dart:io';

import 'package:dream_soft/data_providers/models/ErrorViewModel.dart';
import 'package:flutter/material.dart';

class Constants {
  static String appLocale = "ar";
  static final ErrorViewModel connectionTimeOut = ErrorViewModel(
    errorMessage: '',
    errorCode: HttpStatus.requestTimeout,
  );

  static final String coverImageURL = "https://alamirkamalfarag.com/papers/1571123367.jpg";


}

class AppColors {

  static const Color APP_THEME = Color(0xff4852C1);
  static const Color LIGHT_GREY = Colors.grey;

}

class AppStyles {}

const String _ASSETS = "assets/";
const String _IMAGES = _ASSETS + "images/";

class Assets {
  //****************** locale ******************
  static const String LOCAL = _ASSETS + "locales/";

  //****************** images ******************

  //****************** fonts ******************

}
