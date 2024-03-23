import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:provider/provider.dart' as provider;

import '../../controller/generalController.dart';
 import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ExperienceWeb extends StatefulWidget {
  const ExperienceWeb({Key? key}) : super(key: key);

  @override
  State<ExperienceWeb> createState() => _ExperienceWebState();
}

class _ExperienceWebState extends State<ExperienceWeb> {
  @override
  Widget build(BuildContext context) {


    return FadeInUpBig(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 120),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: "02.",
                      style: TextStyle(
                          color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                          fontSize: 20,
                          fontFamily: 'sfmono'),
                      children: <TextSpan>[
                        TextSpan(
                          text: ''' Where I've Worked''',
                          style: GoogleFonts.robotoSlab(
                              color: provider.Provider.of<AppColorsProvider>(context).whiteColor,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )
                      ]),
                ),
                Container(
                  height: 0.5,
                  margin: EdgeInsets.only(left: 15),
                  width: AppClass().getMqWidth(context) * 0.2,
                  color: AppColors().textLight,
                )
              ],
            ),
            Consumer(builder: (context, ref, child) {
              var data = ref.watch(selectedExpProvider);
              return Container(
                width: AppClass().getMqWidth(context) * 0.6,
                margin: EdgeInsets.only(top: 30.0, left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: expButton(ref, data, context),
                    ),

                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: experienceList(context)[data].desig,
                                style: GoogleFonts.roboto(
                                    color: AppColors().textColor,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    fontSize: 20),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' ${experienceList(context)[data].compName=="NetAccess India Ltd"?"":"@" + experienceList(context)[data].compName.toString()}',
                                    style: GoogleFonts.roboto(
                                        color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                                        fontSize: 20),
                                  )
                                ]),
                          ),
                          Text(
                            experienceList(context)[data].duration.toString(),
                            style: TextStyle(
                                color: AppColors().textLight,
                                letterSpacing: 1,
                                height: 1.5,
                                fontSize: 14,
                                fontFamily: 'sfmono'),
                          ),
                          experienceList(context)[data].points!
                        ],
                      ),
                    )
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }


}
