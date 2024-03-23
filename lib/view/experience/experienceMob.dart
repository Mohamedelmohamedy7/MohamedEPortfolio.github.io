import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';

import '../../controller/generalController.dart';
import '../../model/models.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import 'package:provider/provider.dart' as provider;

class ExperienceMob extends StatefulWidget {
  const ExperienceMob({Key? key}) : super(key: key);

  @override
  State<ExperienceMob> createState() => _ExperienceMobState();
}

class _ExperienceMobState extends State<ExperienceMob> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context)*1.2,
      margin: EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                width: AppClass().getMqWidth(context) * 0.1,
                color: AppColors().textLight,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context),
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:5,
                    child:expButton(ref, data, context),
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
                                  fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' ${experienceList(context)[data].compName=="NetAccess India Ltd"?"":"@" + experienceList(context)[data].compName.toString()}',
                                  style: GoogleFonts.roboto(
                                      color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                                      fontSize: 14),
                                )
                              ]),
                        ),
                        Text(
                          experienceList(context)[data].duration.toString(),
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
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
    );
  }
}
