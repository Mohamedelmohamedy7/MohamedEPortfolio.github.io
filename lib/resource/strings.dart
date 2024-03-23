import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' as rev;
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import '../controller/generalController.dart';
import '../model/models.dart';
import 'colors.dart';

List<Widget> topics() {
  return [
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech1,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech2,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech3,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(
          Icons.blur_on_sharp,
          size: 20,
        ),
        Text(Strings.tech4,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech5,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech6,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech7,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech8,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech9,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech10,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech11,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech12,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech13,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech14,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech15,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
    Row(
      children: [
        Icon(Icons.blur_on_sharp),
        Text(Strings.tech16,
            style: GoogleFonts.robotoFlex(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 17,
            )),
      ],
    ),
  ];
}
Column expButton(rev.WidgetRef ref, int data, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      InkWell(
        onTap: () {
          ref.read(selectedExpProvider.notifier).state = 0;
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: data == 0
                  ? AppColors().cardColor
                  : Colors.transparent,
              border: Border(
                  left: BorderSide(
                      color: data == 0
                          ?  Provider.of<AppColorsProvider>(context).neonColor
                          :  Provider.of<AppColorsProvider>(context).whiteColor,
                      width: 2))),
          child: Text(
            'I-Valley Company',
            style: TextStyle(
                color: data == 0
                    ?  Provider.of<AppColorsProvider>(context).neonColor
                    : AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 14,
                fontFamily: 'sfmono'),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          ref.read(selectedExpProvider.notifier).state = 1;
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: data ==1
                  ? AppColors().cardColor
                  : Colors.transparent,
              border: Border(
                  left: BorderSide(
                      color: data == 1
                          ?  Provider.of<AppColorsProvider>(context).neonColor
                          :  Provider.of<AppColorsProvider>(context).whiteColor,
                      width: 2))),
          child: Text(
            'Dokkan Agency',
            style: TextStyle(
                color: data == 1
                    ?  Provider.of<AppColorsProvider>(context).neonColor
                    : AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 14,
                fontFamily: 'sfmono'),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          ref.read(selectedExpProvider.notifier).state = 2;
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: data == 2
                  ? AppColors().cardColor
                  : Colors.transparent,
              border: Border(
                  left: BorderSide(
                      color: data == 2
                          ?  Provider.of<AppColorsProvider>(context).neonColor
                          :  Provider.of<AppColorsProvider>(context).whiteColor,
                      width: 2))),
          child: Text(
            'Fast\nSolutions',
            style: TextStyle(
                color: data == 2
                    ?  Provider.of<AppColorsProvider>(context).neonColor
                    : AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 14,
                fontFamily: 'sfmono'),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          ref.read(selectedExpProvider.notifier).state = 3;
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: data == 3
                  ? AppColors().cardColor
                  : Colors.transparent,
              border: Border(
                  left: BorderSide(
                      color: data == 3
                          ?  Provider.of<AppColorsProvider>(context).neonColor
                          :  Provider.of<AppColorsProvider>(context).whiteColor,
                      width: 2))),
          child: Text(
            'Freelancer',
            style: TextStyle(
                color: data == 3
                    ?  Provider.of<AppColorsProvider>(context).neonColor
                    : AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 14,
                fontFamily: 'sfmono'),
          ),
        ),
      ),
    ],
  );
}
List<ExperienceModel> experienceList(BuildContext context) => [
      ExperienceModel(
          desig: Strings.expDesig4,
          compName: Strings.expCompName4,
          duration: Strings.expDur4,
          points: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout4,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout4_2,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout4_3,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout4_4,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout4_5,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout4_6,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      ExperienceModel(
          desig: Strings.expDesig2,
          compName: Strings.expCompName2,
          duration: Strings.expDur2,
          points: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout2,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout2_2,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout2_3,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout2_4,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout2_5,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout2_6,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      ExperienceModel(
          desig: Strings.expDesig1,
          compName: Strings.expCompName1,
          duration: Strings.expDur1,
          points: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout3,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout3_2,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout3_3,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout3_4,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout3_5,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout3_6,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      ExperienceModel(
          desig: Strings.expDesig3,
          compName: Strings.expCompName3,
          duration: Strings.expDur3,
          points: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 5.0,
                  top: 10.0,
                ),
                child: Row(
                  children: [
                    Strings.expCompName3 == "NetAccess India Ltd"
                        ? SizedBox()
                        : Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Icon(
                              Icons.blur_on_sharp,
                              color: Provider.of<AppColorsProvider>(context)
                                  .neonColor,
                              size: 20,
                            ),
                          ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout1,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout1_2,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout1_3,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout1_4,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout1_5,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Icon(
                        Icons.blur_on_sharp,
                        color:
                            Provider.of<AppColorsProvider>(context).neonColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          Strings.expAbout1_6,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 13,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    ];

class Strings {
  /* Intro screen contents */
  static final welcomeTxt = '''Hi, My name is''';
  static final name = '''Mohamed ELMohamedy...'''; // add . at the end
  static final whatIdo =
      '''I Develop things for the mobile/web.'''; // add . at the end
  static final introAbout =
      '''I'm Flutter Developer (Android, Ios, Dart, Flutter) experienced in developing cross-platform mobile applications using flutter sdk and dart programming language ''';
  static final currentOrgName =
      '''for create Mobile Apps.'''; // add . at the end

  /* About screen contents */
  static final aboutPara1 =
      '''In June 2019, I got my B.Sc.from the Faculty of Computer & Information Sciences In Mansoura University .''';
  static final aboutPara2 =
      '''In the last of my academic journey , I achieved an excellent rating for my graduation project, while maintaining a good overall cumulative grade within the college , I successfully completed my military service  .''';
  static final aboutPara3 =
      '''If you've any ideas about creating a project or need help in problem, feel free to contact me!''';

  static final techIntro =
      '''Here are a few technologies I’ve been working with recently:''';
  static final tech1 = ''' Flutter'''; // space for manual padding
  static final tech2 = ''' Dart'''; // space for manual padding
  static final tech3 = ''' Firebase'''; // space for manual padding
  static final tech4 = ''' Api'''; // space for manual padding
  static final tech5 = ''' Git '''; // space for manual padding
  static final tech6 = ''' Provider,BLoc,Get-x'''; // space for manual padding
  static final tech7 = ''' MVVM - MVC'''; // space for manual padding
  static final tech8 = ''' Clean Architecture'''; // space for manual padding
  static final tech9 = ''' Wordpress'''; // space for manual padding
  static final tech10 = ''' Flutter Web'''; // space for manual padding
  static final tech11 =
      ''' Flutter Internationalization and Localization'''; // space for manual padding
  static final tech12 =
      ''' Flutter Testing (Unit, Widget, Integration)'''; // space for manual padding
  static final tech13 =
      ''' Flutter Performance Optimization Techniques'''; // space for manual padding
  static final tech14 =
      ''' Flutter Platform Channels'''; // space for manual padding
  static final tech15 =
      ''' Flutter Dependency Injection'''; // space for manual padding
  static final tech16 =
      ''' Flutter Responsive UI Design'''; // space for manual padding

  /* Exp screen contents */
  static final expCompName1 = '''FastSolutions (Part Time)''';
  static final expDesig1 = '''Mobile App Developer''';
  static final expDur1 = '''October 2022 – March 2023 | cairo''';
  static final expAbout1 =
      '''Maintained detailed documentation of software development processes and updates.''';
  static final expAbout1_2 =
      '''Collaborated with UI/UX personnel to integrate ease-of-use and accessibility considerations into.''';
  static final expAbout1_3 =
      '''Has worked on several live projects on different platforms such as e-commerce, booking system, Ui Design''';
  static final expAbout1_4 =
      '''Implemented best practices in software development including code reviews, unit testing, and version control.''';
  static final expAbout1_5 =
      '''Participated in regular team meetings to discuss project progress, challenges, and solutions.''';
  static final expAbout1_6 =
      '''Contributed to the development of reusable components and libraries to streamline future projects.''';

////-------------------------------------------------------------------------------------------------
  static final expCompName2 = '''Dokkan Agency (Full Time)''';
  static final expDesig2 = '''Senior Mobile App Developer''';
  static final expDur2 = '''November 2021 – November 2023 Tanta, Egypt''';
  static final expAbout2 =
      '''Coded programs in diverse programming languages based on specific functionality requirements''';
  static final expAbout2_2 =
      '''Integrated advanced technologies and tools to improve software performance''';
  static final expAbout2_3 =
      '''Experienced many technologies such as Agora push to talk, vpn connection, google Maps ,and Other technologies''';
  static final expAbout2_4 =
      '''Collaborated with cross-functional teams to deliver high-quality software solutions on time and within budget.''';
  static final expAbout2_5 =
      '''Provided technical support and troubleshooting for deployed applications, ensuring smooth operation and user satisfaction.''';
  static final expAbout2_6 =
      '''Implemented security measures to protect sensitive data and prevent unauthorized access.''';

////-------------------------------------------------------------------------------------------------

  static final expCompName3 = '''NetAccess India Ltd''';
  static final expDesig3 = '''Flutter Developer''';
  static final expDur3 = '''Sept 2020 – Oct 2021''';
  static final expAbout3 =
      '''Experienced many technologies such as Agora push to talk, vpn connection, google Maps ,and Other technologies''';
  static final expAbout3_2 =
      '''Worked with a team of 3 engineers to create Ecommerce applications, Booking system applications, etc.''';
  static final expAbout3_3 =
      '''Interfacing with customers on a weekly basis, delivering technology expertise.''';
  static final expAbout3_4 =
      '''Participated in the design and implementation of scalable and maintainable software architectures.''';
  static final expAbout3_5 =
      '''Performed code reviews and provided constructive feedback to improve code quality and maintainability.''';
  static final expAbout3_6 =
      '''Contributed to the optimization of application performance and user experience through continuous iteration and improvement.''';

////-------------------------------------------------------------------------------------------------

  static final expCompName4 = '''I-Valley Company (Full Time)''';
  static final expDesig4 = '''Senior Mobile App Developer''';
  static final expDur4 = '''November 2023 – Present Cairo, Egypt''';
  static final expAbout4 = '''Developed mobile applications for various industries, including healthcare and finance''';
  static final expAbout4_2 = '''Worked with Pax and Verifone payment terminals to integrate secure payment processing functionalities''';
  static final expAbout4_3 = '''Implemented real-time chat features using Firebase and WebSocket technology''';
  static final expAbout4_4 = '''Worked closely with UI/UX designers to create intuitive and visually appealing interfaces''';
  static final expAbout4_5 = '''Performed code reviews and conducted unit testing to ensure software quality and reliability''';
  static final expAbout4_6 = '''Implemented security measures to protect sensitive data and prevent unauthorized access.''';
////-------------------------------------------------------------------------------------------------

  /* Contact screen content */
  static final endTxt =
      '''Thanks for your time , feel free to get in touch. My inbox is always open for you, and be sure I'll be happy to connect with you!''';
}
