import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:provider/provider.dart' as provider;

import '../../controller/generalController.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class AboutWeb extends ConsumerStatefulWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  ConsumerState<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends ConsumerState<AboutWeb> {
   @override
  void initState() {
    
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Container(
        margin: EdgeInsets.only(
            left: AppClass().getMqWidth(context) * 0.03,
            right: AppClass().getMqWidth(context) * 0.03),
        padding: EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: "01.",
                      style: TextStyle(
                          color: provider.Provider.of<AppColorsProvider>(context).neonColor,
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
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          Strings.aboutPara1,
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
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
                            fontSize: 18,
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
                            fontSize: 18,
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
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            childAspectRatio: 10,
                            children: topics()),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Consumer(builder: (context, ref, child) {
                          var data = ref.watch(hoverProvider);
                          bool isHovered = (data == "profilePic");
                          return  Stack(
                            children: [
                          Container(
                            width: AppClass().getMqWidth(context) *
                                (isHovered ? 0.22 : 0.225),
                            height: AppClass().getMqWidth(context) *
                                (isHovered ? 0.22 : 0.225),
                            margin: EdgeInsets.only(top: 10, left: 10),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0.0)),
                                border: Border.all(
                                    color:provider.Provider.of<AppColorsProvider>(context).neonColor,
                                    width: 4)),
                          ),
                          InkWell(
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
                              width: AppClass().getMqWidth(context) * 0.22,
                              height: AppClass().getMqWidth(context) * 0.22,
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
                            ],
                          );
                        }),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }


}
