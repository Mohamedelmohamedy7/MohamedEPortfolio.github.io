import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 import 'package:flutter_riverpod/flutter_riverpod.dart';
 import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/view/about/about.dart';
import 'package:portfolio/view/experience/experience.dart';
import 'package:portfolio/view/intro/intro.dart';
import 'package:portfolio/view/widget/appBar.dart';
import 'package:portfolio/view/widget/leftPane.dart';
import 'package:portfolio/view/widget/rightPane.dart';
import 'package:portfolio/view/work/work.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:provider/provider.dart' as provider;
import '../resource/colors.dart';
import 'contact/contact.dart';



 class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final mScrollController = AutoScrollController();
  bool showFab = false;
  int currentIndex = 0; // Track the current index

  @override
  void initState() {
    super.initState();

    mScrollController.addListener(() {
      final double scrollOffset = mScrollController.offset;
      final double viewportHeight = mScrollController.position.viewportDimension;
      final int newIndex = (scrollOffset / viewportHeight).round();
      if (currentIndex != newIndex) {
        setState(() {
          currentIndex = newIndex;
          showFab = currentIndex != 0;
        });
      }
    });
  }
   @override
  Widget build(BuildContext context) {
     ScreenType scrType = AppClass().getScreenType(context);
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              ref.read(scrollControlProvider.notifier).state = false;
            } else if (direction == ScrollDirection.forward) {
              ref.read(scrollControlProvider.notifier).state = true;
            }
            return true;
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Color(0xff112240),
                      Color(0xff000000),
                      Color(0xff020c1b)
                    ])
                ),
                height: AppClass().getMqHeight(context),
                child: FadeInUpBig(
                  child: Column(
                    children: [
                      Consumer(builder: (context, ref, child) {
                        var isScrollingUp = ref.watch(scrollControlProvider);
                        return AnimatedOpacity(
                          opacity: isScrollingUp ? 1.0 : 1.0,
                          duration: const Duration(milliseconds: 500),
                          child: ActionBar(mScrollController),
                        );
                      }),
                      Expanded(
                        child: () {
                          ScreenType scrType = AppClass().getScreenType(context);
                          return Row(
                            children: [
                              scrType == ScreenType.mobile ? SizedBox() : LeftPane(),
                              Expanded(
                                  flex: 8,
                                  child: ListView(
                                    controller: mScrollController,
                                    children: [
                                      AutoScrollTag(
                                          key: ValueKey(0),
                                          controller: mScrollController,
                                          index: 0,
                                          child: IntroContent(mScrollController)),
                                      AutoScrollTag(
                                          key: ValueKey(1),
                                          controller: mScrollController,
                                          index: 1,
                                          child: About()),
                                      AutoScrollTag(
                                          key: ValueKey(2),
                                          controller: mScrollController,
                                          index: 2,
                                          child: Experience()),
                                      AutoScrollTag(
                                          key: ValueKey(3),
                                          controller: mScrollController,
                                          index: 3,
                                          child: Work()),
                                      AutoScrollTag(
                                          key: ValueKey(4),
                                          controller: mScrollController,
                                          index: 4,
                                          child: Contact())
                                    ],
                                  )),
                              scrType == ScreenType.mobile ? SizedBox() : RightPane(),
                            ],
                          );
                        }(),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child:AnimatedOpacity(
                  opacity: showFab ? 1.0 : 0.0,
                  duration:Duration(milliseconds: 1000),
                  child: Container(
                    margin: EdgeInsets.only(right:scrType==ScreenType.mobile ? 5 : 120,bottom: 10),
                    child: FloatingActionButton(
                      backgroundColor: provider.Provider.of<AppColorsProvider>(context).neonColor,
                      child: Center(child: Icon(Icons.keyboard_arrow_up_rounded,color: provider.Provider.of<AppColorsProvider>(context).whiteColor,)),
                      onPressed: () => mScrollController.scrollToIndex(0, preferPosition: AutoScrollPosition.begin),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
