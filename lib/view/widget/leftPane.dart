import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart' as provider;

import '../../controller/generalController.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';

class LeftPane extends ConsumerStatefulWidget {
  const LeftPane({Key? key}) : super(key: key);

  @override
  ConsumerState<LeftPane> createState() => _LeftPaneState();
}

class _LeftPaneState extends ConsumerState<LeftPane> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  child: Consumer(builder: (context, ref, child) {
                    String val = ref.watch(hoverProvider);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: () async {
                                await launchUrl(
                                    Uri.parse("https://github.com/Mohamedelmohamedy7"));
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state = "git";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "git" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset('assets/svg/github.svg',
                                    color: val == "git"
                                        ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                          // Container(
                          //   height: AppClass().getMqHeight(context) * 0.07,
                          //   child: InkWell(
                          //     onTap: () {},
                          //     onHover: (bol) {
                          //       if (bol) {
                          //         ref.read(hoverProvider.notifier).state =
                          //             "insta";
                          //       } else {
                          //         ref.read(hoverProvider.notifier).state = "";
                          //       }
                          //     },
                          //     child: Container(
                          //       margin: EdgeInsets.only(
                          //           bottom: val == "insta" ? 5.0 : 0),
                          //       padding: const EdgeInsets.only(bottom: 8.0),
                          //       child: SvgPicture.asset(
                          //           'assets/svg/instagram.svg',
                          //           color: val == "insta"
                          //               ? provider.Provider.of<AppColorsProvider>(context).neonColor,
                          //               : AppColors().textColor,
                          //           width: 22),
                          //     ),
                          //   ),
                          // ),
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: () async {
                                await launchUrl(Uri.parse(
                                    "https://www.linkedin.com/in/mohamed-elmohamedy-717101162/"));
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state =
                                      "linkedIn";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "linkedIn" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset(
                                    'assets/svg/linkedIn.svg',
                                    color: val == "linkedIn"
                                        ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: ()async {

                                await launchUrl(Uri.parse("mailto:mohamedghynm@gmail.com?subject=Product Inquiry&body="));
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state =
                                      "twitter";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "twitter" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset(
                                    'assets/svg/email.svg',
                                    color: val == "twitter"
                                        ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: () async {
                                openWhatsapp(
                                    context: context,
                                    number:"+201279279243",
                                    text: "");
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state =
                                      "stackoverflow";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "stackoverflow" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Image.asset(
                                    'assets/svg/whatsapp.webp',
                                    color: val == "stackoverflow"
                                        ? provider.Provider.of<AppColorsProvider>(context).neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )),
            Expanded(
                child: Container(
              width: 1,
              color: AppColors().textColor,
            ))
          ],
        ));
  }
}

void openWhatsapp({
  required BuildContext context,
  required String text,
  required String number,
}) async {
  var whatsapp = number;
  var whatsappURL = "https://wa.me/$whatsapp?text=${Uri.encodeComponent(text)}";

  if (await canLaunch(whatsappURL)) {
    await launch(whatsappURL);
  } else {
    await launch(whatsappURL);
  }
}