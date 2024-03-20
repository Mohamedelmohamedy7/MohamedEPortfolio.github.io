import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  // var primaryColor = const Color(0xff000000);
  var primaryColor = const Color(0xff0a192e);
  var textColor = const Color(0xffccd6f6);
  var textLight = const Color(0xff8892b0);
  // var cardColor = const Color(0xff000000);
  var cardColor = const Color(0xff112240);
}
class AppColorsProvider extends ChangeNotifier{
  var neonColor = const Color(0xffffc107).withOpacity(.6);
  Color whiteColor = const Color(0xffFFFFFF);

 void setNewColor(myNewNeonColor){
    this.neonColor = Color(myNewNeonColor).withOpacity(0.7);
    notifyListeners();
  }
}