
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:provider/provider.dart' as provider;

GlobalKey globalKey = GlobalKey();
class TxtStyle {
  var neonText =
      GoogleFonts.orbitron(color:provider.Provider.of<AppColorsProvider>(globalKey.currentContext!).neonColor, fontSize: 14);

  boldBlack(context) => const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  boldWhite(context) => TextStyle(color: provider.Provider.of<AppColorsProvider>(context).whiteColor, fontWeight: FontWeight.bold);
}
