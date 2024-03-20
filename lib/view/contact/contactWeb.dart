import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/generalController.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import 'package:provider/provider.dart' as provider;

class ContactWeb extends ConsumerStatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  ConsumerState<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends ConsumerState<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    return FadeInRightBig(
      child: Container(

        padding: EdgeInsets.only(top: 30),
        margin: EdgeInsets.only(top: 60,bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '''04.''',
                      style: TextStyle(
                          color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                          fontSize: 15,
                          fontFamily: 'sfmono'),
                    ),
                    Text(
                      ''' What's next?''',
                      style: TextStyle(
                          color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                          fontSize: 18,
                          fontFamily: 'sfmono'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Get In Touch',
                    style: GoogleFonts.robotoSlab(
                      color: AppColors().textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      fontSize: 55,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    width: AppClass().getMqWidth(context) * 0.45,
                    child: Text(
                      Strings.endTxt,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: AppColors().textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 70),
                  child: InkWell(
                    onTap: () {
                      showMessageDialog(context);
                    },
                    onHover: (val){
                      if (val) {
                        ref.read(hoverProvider.notifier).state = "sayHello";
                      } else {
                        ref.read(hoverProvider.notifier).state = "";
                      }
                    },
                    child:Consumer(
                        builder: (context, ref, child) {
                      String state = ref.watch(hoverProvider);
                      bool isHovered = (state == "sayHello");
                      return Container(

                        height:isHovered? AppClass().getMqHeight(context) * 0.09:AppClass().getMqHeight(context) * 0.07,
                        width:isHovered?  AppClass().getMqWidth(context) * 0.15:AppClass().getMqWidth(context) * 0.13,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                                Radius.circular(3.0)),
                            border: Border.all(
                                color: provider.Provider
                                    .of<AppColorsProvider>(context)
                                    .neonColor, width: 1.5)),
                        child: Center(
                          child: Text('Say Hello!',
                              style: TextStyle(
                                  color: provider.Provider
                                      .of<AppColorsProvider>(context)
                                      .neonColor,
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sfmono')),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '''Built & Developed by Mohammad elMohamedy''',
                  style: TextStyle(
                      color: AppColors().textColor,
                      fontSize: 12,
                      fontFamily: 'sfmono'),
                ),
                InkWell(
                  onTap: ()async{
                 await launchUrl(Uri.parse(AppClass.resumeDownloadURL));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '''Download my Resume from Here''',
                          style: TextStyle(
                              color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                              fontSize: 12,
                              fontFamily: 'sfmono'),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.document_scanner_outlined,color: provider.Provider.of<AppColorsProvider>(context).neonColor,size: 18,)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  showMessageDialog(context) {
    final nameController = TextEditingController();
    final contactInfoController = TextEditingController();
    final msgController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    showDialog(context: context,
        barrierDismissible: false,
        builder: (_) => AlertDialog(
      backgroundColor: AppColors().primaryColor,
      titleTextStyle: TextStyle(
          color: provider.Provider.of<AppColorsProvider>(context).neonColor,
          fontSize: 18,
          fontFamily: 'sfmono'),
      title: Row(
        children: [
          Expanded(flex: 9, child: Text('Contact Me!')),
          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close, color: AppColors().textColor))
        ],
      ),
      content: Consumer(
        builder: (context, ref, child) {
          bool isLoading = ref.watch(progressProvider);
          return Stack(
            children: [
              Container(
                color: AppColors().primaryColor,
                width: AppClass().getMqWidth(context) * 0.5,
                height: AppClass().getMqHeight(context) * 0.7,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Let me know your name (or just enter anonymous)';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Name*',
                          errorStyle: TextStyle(color: provider.Provider.of<AppColorsProvider>(context).neonColor,),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).neonColor,)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                          border: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextField(
                          controller: contactInfoController,
                          decoration: InputDecoration(
                            hintText: 'Contact Info (Optional)',
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                            border: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          controller: msgController,
                          maxLines: 8,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Seriously? you want to send a blank message to me :(';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Message*',
                            errorStyle: TextStyle(color: provider.Provider.of<AppColorsProvider>(context).neonColor,),
                            errorBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).neonColor,)),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                            border: OutlineInputBorder(borderSide: BorderSide(color: provider.Provider.of<AppColorsProvider>(context).whiteColor)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    ref.read(progressProvider.notifier).state = true;
                                    AppClass().sendEmail(nameController.text, contactInfoController.text, msgController.text).then((value) {
                                      if(value) {
                                        Navigator.pop(context);
                                        AppClass().showSnackBar('Message sent successfully', context: context);
                                      } else {
                                        Navigator.pop(context);
                                        AppClass().showSnackBar('Failed to send message, please try again later.', context: context);
                                      }
                                      ref.read(progressProvider.notifier).state = false;
                                    }).onError((error, stackTrace) {
                                    //  Navigator.pop(context);
                                      print(error);
                                      AppClass().showSnackBar('Error Occurred', context: context);
                                    });
                                  }
                                },
                                child: Container(
                                  height: AppClass().getMqHeight(context) * 0.06,
                                  width: AppClass().getMqWidth(context) * 0.07,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(Radius.circular(3.0)),
                                      border: Border.all(
                                          color: provider.Provider.of<AppColorsProvider>(context).neonColor, width: 1.5)),
                                  child: Center(
                                    child: Text('Send',
                                        style: TextStyle(
                                            color: provider.Provider.of<AppColorsProvider>(context).neonColor,
                                            fontSize: 13,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'sfmono')),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: isLoading,
                child: Container(
                    width: AppClass().getMqWidth(context) * 0.5,
                    height: AppClass().getMqHeight(context) * 0.7,
                    color: Colors.transparent,
                    child: Center(child: CircularProgressIndicator(color: provider.Provider.of<AppColorsProvider>(context).neonColor,))),
              ),
            ],
          );
        }
      ),
    ));
  }
}
