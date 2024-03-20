import 'dart:convert';

import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:portfolio/model/models.dart';
import 'package:portfolio/resource/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

enum ScreenType { mobile, tab, web }

class AppClass {
  static final AppClass _mAppClass = AppClass._internal();
  static BuildContext? lastContext;
  ScrollController controller = ScrollController();

  /* URL */
  static final resumeDownloadURL =
      '''https://drive.google.com/file/d/13WF8yc_2SzFYtirqPlo82RKeSizx1SN-/view?usp=sharing''';

  static final gitSafeC19 = '''https://github.com/jeeva-HBK/SafeC19''';

  // static final gitHermarts = '''https://github.com/jeeva-HBK/SafeC19''';
  static final gitWtIot = '''https://github.com/jeeva-HBK/AutoChem''';
  static final gitAutoStabilizer =
      '''https://github.com/jeeva-HBK/AutoStabilizer''';
  static final gitPAT = '''https://github.com/jeeva-HBK/PAT''';

  // static final gitAVM = '''https://github.com/jeeva-HBK/SafeC19''';

  List<WorkModel> projectList = [
    WorkModel(
      projectTitle: "IMKAN",
      projectContent: "IMKAN is a booking System that allow you to book "
          "Trips and specify number of persons,date,menus, and time slot in Ahl Masr Promenade and ِAl-ManialStacks",
      tech1: "Android",
      tech2: "Ios",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.imkan",
      appleUrl: "https://apps.apple.com/us/app/imkan/id6450183760",
      image: "imkan.webp",
      stack:
          "Flutter|Dart|Provider|RestAPI|FirebaseMessaging|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "FineGold - فاين جولد",
      projectContent:
          "FineGold is a mobile application that seamlessly integrates the allure of gold with modern technology. Leveraging my expertise in mobile app development, I designed and implemented a user-friendly interface for effortless shopping of gold jewelry, bars, and coins. By integrating real-time market data",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.finegold",
      appleUrl:
          "https://apps.apple.com/us/app/finegold-%D9%81%D8%A7%D9%8A%D9%86-%D8%AC%D9%88%D9%84%D8%AF/id6451441121",
      tech2: "Ios",
      image: "fine.webp",
      stack:
          "Flutter|Dart|Bloc|RestAPI|FirebaseMessaging Notification|Google Map Location,",
    ),
    WorkModel(
      projectTitle: "Prude Style",
      projectContent:
          "Prude Style is an Flutter Fashion app that can be used for e-commerce applications on android and ios devices in Egypt",
      tech1: "Android",
      tech2: "Ios",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.prudestyle",
      appleUrl: "https://apps.apple.com/us/app/prude-style/id6446049847",
      image: "prudStyle.webp",
      stack:
          "Flutter|Dart|Bloc|RestAPI|FirebaseMessaging Notification|Google Map Location,",
    ),
    WorkModel(
      projectTitle: "Adora Cosmetics",
      projectContent:
          '''is an Flutter Cosmetics app that can be used for e-commerce applications on android and ios devices ''',
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.adora",
      appleUrl: "https://apps.apple.com/us/app/adora-cosmetics/id6449039997",
      tech2: "Ios",
      image: "adora.webp",
      stack:
          "Flutter|Dart|Get-x|RestAPI|FirebaseMessaging Notification|Google Map Location,",
    ),
    WorkModel(
      projectTitle: "EverPure",
      projectContent:
          "is an flutter Cosmetics app that can be used for e-commerce applications on android and ios devices in Egypt",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.everpure",
      appleUrl:
          "https://apps.apple.com/us/app/everpure-%D8%A7%D9%8A%D9%81%D8%B1%D8%A8%D9%8A%D9%88%D8%B1/id6450424090",
      tech2: "Ios",
      image: "ever.webp",
      stack:
          "Flutter|Dart|Get-x|RestAPI|FirebaseMessaging Notification|Google Map Location,",
    ),

    WorkModel(
      projectTitle: "BeitWard",
      projectContent:
          "is an flutter Fashion app that can be used for e-commerce applications on android and ios devices in Egypt",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.beitWard",
      appleUrl:
          "https://apps.apple.com/us/app/beitward-%D8%A8%D9%8A%D8%AA-%D9%88%D8%B1%D8%AF/id1636197886",
      tech2: "Ios",
      image: "beit.webp",
      stack:
          "Flutter|Dart|Bloc|RestAPI|FirebaseMessaging Notification|Google Map Location,",
    ),

    WorkModel(
      projectTitle: "Eval Eltorkey - ايفال التركي",
      projectContent:
          "is an flutter furniture app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.eval",
      appleUrl:
          "https://apps.apple.com/us/app/eval-eltorkey-%D8%A7%D9%8A%D9%81%D8%A7%D9%84-%D8%A7%D9%84%D8%AA%D8%B1%D9%83%D9%8A/id6444809492",
      tech2: "Ios",
      image: "eval.webp",
      stack:
          "Flutter|Dart|Bloc|RestAPI|FirebaseMessaging Notification|Google Map Location,",
    ),
    WorkModel(
      projectTitle: "El-Shershaby - الشرشابي",
      projectContent:
          "is an flutter furniture app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.elshershaby",
      appleUrl:
          "https://apps.apple.com/us/app/el-shershaby-%D8%A7%D9%84%D8%B4%D8%B1%D8%B4%D8%A7%D8%A8%D9%8A/id6447318370",
      tech2: "Ios",
      image: "sharshaby.webp",
      stack:
          "Flutter|Dart|Provider|RestAPI|FirebaseMessaging Notification|GoogleMapLocation|",
    ),
    WorkModel(
      projectTitle: "Edraak - إدراك",
      projectContent:
          "is an flutter furniture app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.edrak",
      appleUrl: "https://apps.apple.com/us/app/edraak/id6454298947",
      tech2: "Ios",
      image: "edraak.webp",
      stack:
          "Flutter|Dart|Provider|RestAPI|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "Gannet Elfawakeh - جنة الفواكة",
      projectContent:
          "is an flutter furniture app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.gannetelfawakeh",
      appleUrl:
          "https://apps.apple.com/us/app/gannet-elfawakeh-%D8%AC%D9%86%D8%A9-%D8%A7%D9%84%D9%81%D9%88%D8%A7%D9%83%D8%A9/id1592327108",
      tech2: "Ios",
      image: "ganet.webp",
      stack:
          "Flutter|Dart|Provider|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "Arabia Cafe - بن ارابيا",
      projectContent:
          "is an flutter furniture app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.coffeArebia",
      appleUrl:
          "https://apps.apple.com/us/app/arabia-cafe-%D8%A8%D9%86-%D8%A7%D8%B1%D8%A7%D8%A8%D9%8A%D8%A7/id1568341570",
      tech2: "Ios",
      image: "arabia.webp",
      stack:
          "Flutter|Dart|Provider|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "El-Shaikh - الشيخ",
      projectContent:
          "is an flutter Cosmetics app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.elshikh",
      appleUrl:
          "https://apps.apple.com/us/app/el-shaikh-%D8%A7%D9%84%D8%B4%D9%8A%D8%AE/id6450507624",
      tech2: "Ios",
      image: "shekh.webp",
      stack:
          "Flutter|Dart|Provider|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "Bareeq - بريق",
      projectContent:
          "is an flutter Cosmetics app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.bareeq",
      appleUrl: "",
      tech2: "Ios",
      image: "barek.webp",
      stack:
          "Flutter|Dart|Provider|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "Tsaly Elhelw - تسالى الحلو ",
      projectContent:
          "is an flutter Cosmetics app that can be used for e-commerce applications on android and ios devices",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?id=com.dokkan.TsalyElhelwUser",
      appleUrl:
          "https://apps.apple.com/us/app/tsaly-elhelw-%D8%AA%D8%B3%D8%A7%D9%84%D9%89-%D8%A7%D9%84%D8%AD%D9%84%D9%88/id1582375288",
      tech2: "Ios",
      image: "tsaly.webp",
      stack:
          "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
  ];

  factory AppClass() {
    return _mAppClass;
  }

  AppClass._internal();

  getMqWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  getMqHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  showSnackBar(String msg, {BuildContext? context}) {
    ScaffoldMessenger.of(context ?? lastContext!)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  ScreenType getScreenType(BuildContext context) {
    double scrWidth = getMqWidth(context);
    if (scrWidth > 915) {
      return ScreenType.web;
    } else if (scrWidth < 650) {
      return ScreenType.mobile;
    }
    return ScreenType.tab;
  }

  downloadResume(context) async {
    await launchUrl(Uri.parse(AppClass.resumeDownloadURL));
  }

  alertDialog(context, title, msg) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
                title: Text(title, style: TxtStyle().boldWhite(context)),
                content: Text(msg),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () => Navigator.pop(context),
                      child: Text('Okay'))
                ]));
  }

  Future<bool> sendEmail(name, contact, msg) async {
    // set Public Key as global settings
    EmailJS.init(const Options(
      publicKey: 'm2hngmCILd_bGhbyI',
      privateKey: '5fWqvt8BUymvvdl5jEAW2',
    ));

    try {
      // send the email without dynamic variables
      await EmailJS.send(
          'service_xm1fio8',
          'template_dk29ky4',
          {
            'user_name': '$name',
            'user_email': '${contact ?? "mohamedghynm@gmail.com"}',
            "message": "my name is $name \n  contact is : $contact \n  $msg",
            "user_subject": "Your Cv ",
          },
          const Options(
            publicKey: 'm2hngmCILd_bGhbyI',
            privateKey: '5fWqvt8BUymvvdl5jEAW2',
          ));
      print('SUCCESS!');
      return true;
    } catch (error) {
      print(error.toString());
      return false;
    }

    // var url = (Uri.parse('https://api.emailjs.com/api/v1.0/email/send'));
    // var response = await http.post(
    //   url,
    //   body: json.encode({
    //     "service_id": "service_xm1fio8",
    //     "template_id": "template_dk29ky4",
    //     "key": "m2hngmCILd_bGhbyI",
    //     "template_params": {
    //       'user_name': '$name',
    //       'user_email': '${contact ?? "mohamedghynm@gmail.com"}',
    //       "user_message": "$msg",
    //       "user_subject": "Your Cv ",
    //     }
    //   }),
    // );
    // print(response.body);
    // return response.statusCode == 200;
  }
}
