import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resource/colors.dart';
import 'package:provider/provider.dart' as provider;

class WorkWeb extends ConsumerStatefulWidget {
  const WorkWeb({Key? key}) : super(key: key);

  @override
  ConsumerState<WorkWeb> createState() => _WorkWebState();
}

class _WorkWebState extends ConsumerState<WorkWeb> {
  @override
  Widget build(BuildContext context) {
    ScreenType scrType = AppClass().getScreenType(context);

    return Column(
      children: [
        RichText(
          text: TextSpan(
              text: "03.",
              style: TextStyle(
                  color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                  fontSize: 20,
                  fontFamily: 'sfmono'),
              children: <TextSpan>[
                TextSpan(
                  text: ' My Noteworthy Projects',
                  style: GoogleFonts.roboto(
                      color: AppColors().textColor,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'view the archives',
            style: TextStyle(
                color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                fontSize: 15,
                fontFamily: 'sfmono'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30.0, bottom: 70.0),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount:AppClass().projectList.length ,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 3/2.5),
            itemBuilder: (BuildContext context, int index) {
              return getTile(index:index);
            },

          ),
        ),
      ],
    );
  }

  getTile({required int index}) {
    return InkWell(
      onTap: () async {
        // switch (index) {
          // case 0:
          //   //await launchUrl(Uri.parse(AppClass.gitSafeC19));
          //   break;
          //
          // case 1:
          //   //AppClass().alertDialog(context, 'Not Found', 'Sorry the project you requested not found in the repository');
          //   break;
          //
          // case 2:
          //   //await launchUrl(Uri.parse(AppClass.gitWtIot));
          //   break;
          //
          // case 3:
          //   //await launchUrl(Uri.parse(AppClass.gitAutoStabilizer));
          //   break;
          //
          // case 4:
          //   //await launchUrl(Uri.parse(AppClass.gitPAT));
          //   break;
          //
          // case 5:
          //   //AppClass().alertDialog(context, 'Not Found', 'Sorry the project you requested not found in the repository');
          //   break;
        // }
      },
      onHover: (bool) {
        if (bool) {
          ref.read(hoverProvider.notifier).state = "$index";
        } else {
          ref.read(hoverProvider.notifier).state = "";
        }
      },
      child: Consumer(builder: (context, ref, child) {
        String data = ref.watch(hoverProvider);
        bool isHovered = (data == "$index");
        return Container(
          margin: EdgeInsets.all(isHovered ? 1.0 : 9.0),
          child: Card(
            color: AppColors().cardColor,
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Center(
                    child: Opacity(
                      opacity:0.1,
                      child: Image.asset(
                        'assets/svg/${AppClass().projectList[index].image}',
                        fit: BoxFit.cover,
                        // color:
                        //     isHovered ? provider.Provider.of<AppColorsProvider>(context).neonColor, : provider.Provider.of<AppColorsProvider>(context).whiteColor,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(14)),
                            child: Image.asset(
                              'assets/svg/${AppClass().projectList[index].image}',
                              width: 45,
                              height: 45,
                              // color:
                              //     isHovered ? provider.Provider.of<AppColorsProvider>(context).neonColor, : provider.Provider.of<AppColorsProvider>(context).whiteColor,
                            ),
                          ),
                          // SvgPicture.asset(
                          //   'assets/svg/externalLink.svg',
                          //   width: 22,
                          //   height: 22,
                          //   color:
                          //       isHovered ? provider.Provider.of<AppColorsProvider>(context).neonColor  : provider.Provider.of<AppColorsProvider>(context).whiteColor,
                          // ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              AppClass()
                                  .projectList[index]
                                  .projectTitle
                                  .toString(),
                              textAlign: TextAlign.left,
                              style: GoogleFonts.robotoSlab(
                                  color: isHovered
                                      ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                      : provider.Provider.of<AppColorsProvider>(context).whiteColor,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),

                      Text(
                        AppClass()
                            .projectList[index]
                            .stack!.replaceAll("|", " , ")
                            .toString(),
                        style: GoogleFonts.roboto(
                          color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines:2,

                      ),
                        Text(
                          AppClass().projectList[index].projectContent.toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                     Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await launchUrl(Uri.parse(
                                  AppClass().projectList[index].androidUrl!));
                            },
                            child: Container(
                              width: isHovered == true ? 90 : 80,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                      color: isHovered == true
                                          ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                          : AppColors().textLight,
                                      width: 1.5)),
                              child: Center(
                                child: Text(
                                  AppClass().projectList[index].tech1 ?? "",
                                  style: GoogleFonts.roboto(
                                    color: isHovered == true
                                        ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                        : AppColors().textLight,
                                    letterSpacing: 1,
                                    fontSize: isHovered == true ? 14 : 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              await launchUrl(Uri.parse(
                                  AppClass().projectList[index].appleUrl!));
                            },
                            child: Container(
                              width: isHovered == true ? 90 : 80,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                      color: isHovered == true
                                          ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                          : AppColors().textLight,
                                      width: 1.5)),
                              child: Center(
                                child: Text(
                                  AppClass().projectList[index].tech2 ?? "",
                                  style: GoogleFonts.roboto(
                                    color: isHovered == true
                                        ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                        : AppColors().textLight,
                                    letterSpacing: 1,
                                    fontSize: isHovered == true ? 14 : 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            AppClass().projectList[index].tech3 ?? "",
                            style: GoogleFonts.roboto(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

        );
      }),
    );
  }
}
