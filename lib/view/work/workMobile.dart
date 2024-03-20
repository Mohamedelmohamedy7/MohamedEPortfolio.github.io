import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resource/colors.dart';
import 'package:provider/provider.dart' as provider;

class WorkMobile extends ConsumerStatefulWidget {
  const WorkMobile({Key? key}) : super(key: key);

  @override
  ConsumerState<WorkMobile> createState() => _WorkWebState();
}

class _WorkWebState extends ConsumerState<WorkMobile> {
  @override
  Widget build(BuildContext context) {
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
                      fontSize: 18),
                )
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'view the archives',
            style: TextStyle(
                color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                fontSize: 12,
                fontFamily: 'sfmono'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30.0, bottom: 50.0,left: 20,right: 20),
          child: StaggeredGrid.count(
            crossAxisCount: 1,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 0),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 1),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 2),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 3),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 4),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 5),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 6),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 7),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 8),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 9),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 10),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 11),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 12),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Tile(index: 13),
              ),
            ],

          ),
        ),
      ],
    );
  }

  Tile({required int index}) {
    return InkWell(
      onTap: () async {
        // switch (index) {
        //   case 0:
        //    // await launchUrl(Uri.parse(AppClass.gitSafeC19));
        //     break;
        //
        //   case 1:
        //     //AppClass().alertDialog(context, 'Not Found', 'Sorry the project you requested not found in the repository');
        //     break;
        //
        //   case 2:
        //    // await launchUrl(Uri.parse(AppClass.gitWtIot));
        //     break;
        //
        //   case 3:
        //    // await launchUrl(Uri.parse(AppClass.gitAutoStabilizer));
        //     break;
        //
        //   case 4:
        //     //await launchUrl(Uri.parse(AppClass.gitPAT));
        //     break;
        //
        //   case 5:
        //     AppClass().alertDialog(context, 'Not Found',
        //         'Sorry the project you requested not found in the repository');
        //     break;
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
          margin: EdgeInsets.all(isHovered ? 8.0 : 0.0),
          child: Tooltip(
            message: AppClass().projectList[index].projectTitle.toString() + "\n\n" + AppClass().projectList[index].projectContent.toString(),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(AppClass().getMqWidth(context) * 0.1),
            waitDuration: Duration(seconds: 1),
            decoration: BoxDecoration(
              color: AppColors().primaryColor.withOpacity(0.9),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            textStyle: TextStyle(color: provider.Provider.of<AppColorsProvider>(context).whiteColor.withOpacity(0.5)),
            preferBelow: true,
            verticalOffset: 20,
            child: Card(
              color: AppColors().cardColor,
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
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
                        //   isHovered ? provider.Provider.of<AppColorsProvider>(context).neonColor  : provider.Provider.of<AppColorsProvider>(context).whiteColor,
                        // ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
                      child: Row(
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
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
                        child: Text(
                          AppClass()
                              .projectList[index]
                              .projectContent
                              .toString(),
                          style: GoogleFonts.roboto(
                            color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Text(
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
                      ),
                    ),
                    SizedBox(height: 10,),
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
              ),
            ),
          ),
        );
      }),
    );
  }
}
