import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../controller/generalController.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import 'package:provider/provider.dart' as provider;

class IntroMobile extends StatefulWidget {
  final AutoScrollController aScrollController;

  IntroMobile(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
       padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 20,),
           Text(
             Strings.welcomeTxt,
             style: TextStyle(
                 color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                 fontSize: 17,
                 fontFamily: 'sfmono'),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 10.0),
             child: Text(
               Strings.name,
               style: GoogleFonts.robotoSlab(
                 color: AppColors().textColor,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 3,
                 fontSize: 25,
               ),
             ),
           ),
           Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 5.0),
               child: Text(
                 Strings.whatIdo,
                 style: GoogleFonts.robotoSlab(
                   color: AppColors().textLight,
                   fontWeight: FontWeight.bold,
                   letterSpacing: 3,
                   fontSize: 22,
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Container(
               child: RichText(
                   text: TextSpan(
                       text: Strings.introAbout,
                       style: GoogleFonts.roboto(
                         color: AppColors().textLight,
                         letterSpacing: 1,
                         height: 1.5,
                         fontSize: 17,
                       ),
                       children: <TextSpan>[
                     TextSpan(
                       text: Strings.currentOrgName,
                       style: GoogleFonts.roboto(
                         color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                         letterSpacing: 1,
                         height: 1.5,
                         fontSize: 17,
                       ),
                     )
                   ])),
             ),
           ),
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Consumer(builder: (context, ref, child) {
                 var data = ref.watch(hoverProvider);
                 bool isHovered = (data == "profilePic");
                 return  Stack(
                   children: [
                     Container(
                       width: AppClass().getMqWidth(context) *
                           (isHovered ? 0.62 : 0.645),
                       height: AppClass().getMqWidth(context) *
                           (isHovered ? 0.84 : 0.84),
                       margin: EdgeInsets.only(top: 10, left: 10),
                       decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius:
                           BorderRadius.all(Radius.circular(0.0)),
                           border: Border.all(
                               color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                               width: 4)),
                     ),
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: InkWell(
                         onTap: () {},
                         onHover: (bol) {
                           if (bol) {
                             ref.read(hoverProvider.notifier).state =
                             "profilePic";
                           } else {
                             ref.read(hoverProvider.notifier).state = "";
                           }
                         },
                         child: Container(
                           margin: EdgeInsets.only(top: 25,right: 20),
                           alignment: Alignment.center,
                           width: AppClass().getMqWidth(context) * 0.62,
                           height: AppClass().getMqWidth(context) * 0.77,
                           decoration: BoxDecoration(
                               borderRadius:
                               BorderRadius.all(Radius.circular(0.0)),
                               image: DecorationImage(
                                   fit: BoxFit.cover,
                                   colorFilter: ColorFilter.mode(
                                       AppColors().primaryColor,
                                       isHovered
                                           ? BlendMode.color
                                           : BlendMode.lighten),
                                   image: AssetImage(
                                       "assets/svg/myImagemobile.webp")),
                               color: Colors.transparent),
                         ),
                       ),
                     ),
                   ],
                 );
               }),
             ],
           ),
           SizedBox(height: 50,),
           // Padding(
           //   padding: const EdgeInsets.only(top: 60.0),
           //   child: InkWell(
           //     onTap: () {
           //       widget.aScrollController.scrollToIndex(3,
           //           preferPosition: AutoScrollPosition.begin);
           //     },
           //     child: Container(
           //        width: AppClass().getMqWidth(context) * 0.5,
           //       padding: EdgeInsets.all(10.0),
           //       decoration: BoxDecoration(
           //           color: Colors.transparent,
           //           borderRadius: BorderRadius.all(Radius.circular(3.0)),
           //           border: Border.all(
           //               color: provider.Provider.of<AppColorsProvider>(context).neonColor, width: 1.5)),
           //       child: Center(
           //         child: Text('Check Out My Work!',
           //             style: TextStyle(
           //                 color: provider.Provider.of<AppColorsProvider>(context).neonColor,
           //                 fontSize: 10,
           //                 letterSpacing: 1,
           //                 fontWeight: FontWeight.bold,
           //                 fontFamily: 'sfmono')),
           //       ),
           //     ),
           //   ),
           // ),
         ],
       ),
          ),
    );
  }
}
