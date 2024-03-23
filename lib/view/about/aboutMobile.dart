import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import 'package:provider/provider.dart' as provider;

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
       child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "01.",
                    style: TextStyle(
                        color:  provider.Provider.of<AppColorsProvider>(context).neonColor,
                        fontSize: 20,
                        fontFamily: 'sfmono'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' About Me',
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
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              Strings.aboutPara1,
              style: GoogleFonts.roboto(
                color: AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              Strings.aboutPara2,
              style: GoogleFonts.roboto(
                color: AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              Strings.aboutPara3,
              style: GoogleFonts.roboto(
                color: AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              Strings.techIntro,
              style: GoogleFonts.roboto(
                color: AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 15,
              ),
            ),
          ),

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
              Icon(Icons.blur_on_sharp),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.blur_on_sharp),
              Expanded(
                child: Text(Strings.tech11,
                    style: GoogleFonts.robotoFlex(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 17,
                    ),maxLines: 2,),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.blur_on_sharp),
              Expanded(
                child: Text(Strings.tech12,
                    style: GoogleFonts.robotoFlex(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 17,
                    )
                ,maxLines: 2,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.blur_on_sharp),
              Expanded(
                child: Text(Strings.tech13,
                    style: GoogleFonts.robotoFlex(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 17,
                    ),
                maxLines: 2,
                ),
              ),
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
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
