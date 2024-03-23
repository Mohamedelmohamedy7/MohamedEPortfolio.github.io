import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import 'package:provider/provider.dart' as provider;

class IntroWeb extends StatefulWidget {
  AutoScrollController aScrollController;

  IntroWeb(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroWeb> createState() => _IntroWebState();
}

class _IntroWebState extends State<IntroWeb> {
  bool apper = false;
  bool newLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.01,
          top: AppClass().getMqHeight(context) * 0.03),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              newLoading == true
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 20),
                      child: Text(
                        Strings.welcomeTxt,
                        style: TextStyle(
                            color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                            fontSize: 18,
                            fontFamily: 'sfmono'),
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 20),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            Strings.welcomeTxt,
                            textStyle: TextStyle(
                                color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                                fontSize: 18,
                                fontFamily: 'sfmono'),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                        pause: Duration(seconds: 0),
                        totalRepeatCount: 1,
                        displayFullTextOnTap: true,
                        onFinished: () {
                          setState(() {
                            apper = true;
                          });
                        },
                        stopPauseOnTap: true,
                      )),
              apper == true
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              Strings.name,
                              textStyle: GoogleFonts.robotoSlab(
                                color: AppColors().textColor,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3,
                                fontSize: 45,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          pause: Duration(seconds: 0),
                          totalRepeatCount: 1,
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          onFinished: () {
                            setState(() {
                              newLoading = true;
                            });
                          }))
                  : SizedBox(),
              Container(
                width: AppClass().getMqWidth(context) -
                    (AppClass().getMqWidth(context) * 0.23),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    Strings.whatIdo,
                    style: GoogleFonts.robotoSlab(
                      color: AppColors().textLight,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      fontSize: 55,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: RichText(
                      text: TextSpan(
                          text: Strings.introAbout,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                          text: Strings.currentOrgName,
                          style: GoogleFonts.roboto(
                            color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        )
                      ])),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 70),
                child: InkWell(
                  onTap: () {
                    widget.aScrollController.scrollToIndex(2,
                        preferPosition: AutoScrollPosition.begin);
                  },
                  child: Container(
                    height: AppClass().getMqHeight(context) * 0.09,
                    width: AppClass().getMqWidth(context) * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(
                            color: provider.Provider.of<AppColorsProvider>(context).neonColor, width: 1.5)),
                    child: Center(
                      child: Text('Check Out My Work!',
                          style: TextStyle(
                              color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
