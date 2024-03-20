import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:provider/provider.dart' as provider;

import '../../controller/generalController.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';

class IntroTab extends StatefulWidget {
  AutoScrollController aScrollController;

  IntroTab(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroTab> createState() => _IntroTabState();
}

class _IntroTabState extends State<IntroTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.01,
          top: AppClass().getMqHeight(context) * 0.07),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              Strings.welcomeTxt,
              style: TextStyle(
                  color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                  fontSize: 22,
                  fontFamily: 'sfmono'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              Strings.name,
              style: GoogleFonts.robotoSlab(
                color: AppColors().textColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                fontSize: 32,
              ),
            ),
          ),
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
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              width: AppClass().getMqWidth(context) * 0.45,
              child: RichText(
                  text: TextSpan(
                      text: Strings.introAbout,
                      style: GoogleFonts.roboto(
                        color: AppColors().textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: Strings.currentOrgName,
                      style: GoogleFonts.roboto(
                        color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 16,
                      ),
                    )
                  ])),
            ),
          ),
          SizedBox(height: 30,),
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
                          (isHovered ? 0.42 : 0.445),
                      height: AppClass().getMqWidth(context) *
                          (isHovered ? 0.64 : 0.64),
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
                          width: AppClass().getMqWidth(context) * 0.42,
                          height: AppClass().getMqWidth(context) * 0.6,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(0.0)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      AppColors().primaryColor,
                                      isHovered
                                          ? BlendMode.lighten
                                          : BlendMode.color),
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
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 50),
            child: InkWell(
              onTap: () {
                widget.aScrollController.scrollToIndex(1,
                    preferPosition: AutoScrollPosition.begin);
              },
              child: Container(
                height: AppClass().getMqHeight(context) * 0.09,
                width: AppClass().getMqWidth(context) * 0.25,
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
    );
  }
}
