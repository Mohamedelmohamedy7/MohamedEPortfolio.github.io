import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:provider/provider.dart' as provider;

class ActionBar extends ConsumerStatefulWidget {
  final AutoScrollController controller;

  ActionBar(this.controller, {Key? key}) : super(key: key);

  @override
  ConsumerState<ActionBar> createState() => _ActionBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ActionBarState extends ConsumerState<ActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
         padding: EdgeInsets.only(right: 15.0, top: 20.0),
        child: () {
          ScreenType scrType = AppClass().getScreenType(context);
          if (scrType == ScreenType.mobile || scrType == ScreenType.tab) {
            return Padding(
              padding: scrType == ScreenType.tab ? EdgeInsets.all(8.0):EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                  'assets/svg/appLogo.webp',
                  width:180,fit: BoxFit.cover,
                  height:180,color:  provider.Provider.of<AppColorsProvider>(context).neonColor,
                  ),
                  PopupMenuButton(
                    color: AppColors().cardColor,
                    itemBuilder: (c) => <PopupMenuEntry>[
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () {
                            AppClass().downloadResume(context);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.color_lens, size: 18, ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'My Resume',
                                  style: GoogleFonts.roboto(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: Container(
                            width: 90.0,
                            child: InkWell(
                              onTap: () => widget.controller
                                  .scrollToIndex(1,
                                      preferPosition:
                                          AutoScrollPosition.begin)
                                  .then((value) {
                                // close the window
                                Navigator.of(context).pop();
                              }),
                              child: Row(
                                children: [
                                  Icon(Icons.account_circle_rounded,
                                      size: 18),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'About',
                                      style: GoogleFonts.roboto(),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () => widget.controller
                              .scrollToIndex(2,
                                  preferPosition: AutoScrollPosition.begin)
                              .then((value) {
                            // close the window
                            Navigator.of(context).pop();
                          }),
                          child: Row(
                            children: [
                              Icon(Icons.travel_explore_rounded, size: 18),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Experience',
                                  style: GoogleFonts.roboto(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () => widget.controller
                              .scrollToIndex(2,
                                  preferPosition: AutoScrollPosition.begin)
                              .then((value) {
                            // close the window
                            Navigator.of(context).pop();
                          }),
                          child: Row(
                            children: [
                              Icon(Icons.computer_rounded, size: 18),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Work',
                                  style: GoogleFonts.roboto(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () => widget.controller
                              .scrollToIndex(4,
                                  preferPosition: AutoScrollPosition.begin)
                              .then((value) {
                            // close the window
                            Navigator.of(context).pop();
                          }),
                          child: Row(
                            children: [
                              Icon(Icons.phone_rounded, size: 18),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Contact',
                                  style: GoogleFonts.roboto(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: InkWell(
                          onTap: () {

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return FadeInRight(
                                  child: AlertDialog(
                                    content: Wrap(
                                      alignment: WrapAlignment.center,
                                      children: [

                                        container(context, 0xff5ac24e,pop:true),
                                        container(context, 0xffEE6192,pop:true),
                                        container(context, 0xffffc107,pop:true),
                                        container(context, 0xffbb68c8,pop:true),
                                        container(context, 0xff4e93e6,pop:true),
                                      ],
                                    ),
                                    actions: [

                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.color_lens, size: 18, ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Change Colors',
                                  style: GoogleFonts.roboto(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    child: Icon(Icons.menu_rounded, size: 30),
                  ),
                ],
              ),
            );
          }
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Image.asset(
                  'assets/svg/appLogo.webp',
                  width:230,fit: BoxFit.cover,
                  height:230,color:  provider.Provider.of<AppColorsProvider>(context).neonColor,
                ),
              ),
              Expanded(
                flex: 13,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      /*Text(scrType.name),*/
                      InkWell(
                        onTap: () {
                          widget.controller.scrollToIndex(1,
                              preferPosition: AutoScrollPosition.begin);
                        },
                        onHover: (bol) {
                          if (bol) {
                            ref.read(hoverProvider.notifier).state = "aboutTitle";
                          } else {
                            ref.read(hoverProvider.notifier).state = "";
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Row(
                            children: [
                              Text("01. ",
                                  style: TextStyle(
                                      color:
                                          provider.Provider.of<AppColorsProvider>(
                                                  context)
                                              .neonColor,
                                      fontSize: 13,
                                      fontFamily: 'sfmono')),
                              Consumer(builder: (context, ref, child) {
                                String state = ref.watch(hoverProvider);
                                bool isHovered = (state == "aboutTitle");
                                return Text("About",
                                    style: TextStyle(
                                        color: isHovered
                                            ? provider.Provider.of<
                                                    AppColorsProvider>(context)
                                                .neonColor
                                            : AppColors().textColor,
                                        fontSize: 13,
                                        fontFamily: 'sfmono'));
                              }),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          widget.controller.scrollToIndex(2,
                              preferPosition: AutoScrollPosition.begin);
                        },
                        onHover: (bol) {
                          if (bol) {
                            ref.read(hoverProvider.notifier).state = "expTitle";
                          } else {
                            ref.read(hoverProvider.notifier).state = "";
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Row(
                            children: [
                              Text("02. ",
                                  style: TextStyle(
                                      color:
                                          provider.Provider.of<AppColorsProvider>(
                                                  context)
                                              .neonColor,
                                      fontSize: 13,
                                      fontFamily: 'sfmono')),
                              Consumer(builder: (context, ref, child) {
                                String state = ref.watch(hoverProvider);
                                bool isHovered = (state == "expTitle");
                                return Text("Experience",
                                    style: TextStyle(
                                        color: isHovered
                                            ? provider.Provider.of<
                                                    AppColorsProvider>(context)
                                                .neonColor
                                            : AppColors().textColor,
                                        fontSize: 13,
                                        fontFamily: 'sfmono'));
                              }),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          widget.controller.scrollToIndex(3,
                              preferPosition: AutoScrollPosition.begin);
                        },
                        onHover: (bol) {
                          if (bol) {
                            ref.read(hoverProvider.notifier).state = "workTitle";
                          } else {
                            ref.read(hoverProvider.notifier).state = "";
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Row(
                            children: [
                              Text("03. ",
                                  style: TextStyle(
                                      color:
                                          provider.Provider.of<AppColorsProvider>(
                                                  context)
                                              .neonColor,
                                      fontSize: 13,
                                      fontFamily: 'sfmono')),
                              Consumer(builder: (context, ref, child) {
                                String state = ref.watch(hoverProvider);
                                bool isHovered = (state == "workTitle");

                                return Text("Work",
                                    style: TextStyle(
                                        color: isHovered
                                            ? provider.Provider.of<
                                                    AppColorsProvider>(context)
                                                .neonColor
                                            : AppColors().textColor,
                                        fontSize: 13,
                                        fontFamily: 'sfmono'));
                              }),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          widget.controller.scrollToIndex(4,
                              preferPosition: AutoScrollPosition.begin);
                        },
                        onHover: (bol) {
                          if (bol) {
                            ref.read(hoverProvider.notifier).state =
                                "contactTitle";
                          } else {
                            ref.read(hoverProvider.notifier).state = "";
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Row(
                            children: [
                              Text("04.",
                                  style: TextStyle(
                                      color:
                                          provider.Provider.of<AppColorsProvider>(
                                                  context)
                                              .neonColor,
                                      fontSize: 13,
                                      fontFamily: 'sfmono')),
                              Consumer(builder: (context, ref, child) {
                                String state = ref.watch(hoverProvider);
                                bool isHovered = (state == "contactTitle");
                                return Text("Contact",
                                    style: TextStyle(
                                        color: isHovered
                                            ? provider.Provider.of<
                                                    AppColorsProvider>(context)
                                                .neonColor
                                            : AppColors().textColor,
                                        fontSize: 13));
                              }),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return FadeInRight(
                                child: AlertDialog(
                                  content: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: [
                                      container(context, 0xff5ac24e),
                                      container(context, 0xffEE6192),
                                      container(context, 0xffffc107),
                                      container(context, 0xffbb68c8),
                                      container(context, 0xff4e93e6),
                                    ],
                                  ),
                                  actions: [

                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Row(
                            children: [
                              Text("05.",
                                  style: TextStyle(
                                      color:
                                      provider.Provider.of<AppColorsProvider>(
                                          context)
                                          .neonColor,
                                      fontSize: 13,
                                      fontFamily: 'sfmono')),
                              Consumer(builder: (context, ref, child) {
                                String state = ref.watch(hoverProvider);
                                bool isHovered = (state == "Change Colors");
                                return Text("Change Colors",
                                    style: TextStyle(
                                        color: isHovered
                                            ? provider.Provider.of<
                                            AppColorsProvider>(context)
                                            .neonColor
                                            : AppColors().textColor,
                                        fontSize: 13));
                              }),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          AppClass().downloadResume(context);
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0)),
                              border: Border.all(
                                  color: provider.Provider.of<AppColorsProvider>(
                                          context)
                                      .neonColor,
                                  width: 1.5)),
                          child: Center(
                            child: Text('Resume',
                                style: TextStyle(
                                    color:
                                        provider.Provider.of<AppColorsProvider>(
                                                context)
                                            .neonColor,
                                    fontSize: 13,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'sfmono')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }());
  }

  GestureDetector container(BuildContext context, color, {bool? pop}) {
    print(pop);
    return GestureDetector(
      onTap: () {
        provider.Provider.of<AppColorsProvider>(context,listen: false).setNewColor(color);
        Navigator.of(context).pop();
        pop==true?Navigator.of(context).pop():print("Np");
       },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
      ),
    );
  }
}
