
import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/models.dart';
import 'package:portfolio/resource/styles.dart';
import 'package:url_launcher/url_launcher.dart';

enum ScreenType { mobile, tab, web }

class AppClass {
  static final AppClass _mAppClass = AppClass._internal();
  static BuildContext? lastContext;
  ScrollController controller = ScrollController();

  /* URL */
  static final resumeDownloadURL =
      '''https://flowcv.com/resume/tuswofi6w3''';



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
    WorkModel(
      projectTitle: "Rosheta - روشتة",
      projectContent:
          "Use the Rosheta application to empower yourself in managing your health care, as it allows you to book easily and effectively with specialized doctors Discover our innovative features that make it easier to find doctors, schedule appointments, and track your appointment history.",
      tech1: "Android",
      androidUrl:
          "https://play.google.com/store/apps/details?src=AppAgg.com&id=com.Hsolution.rosheta",
      appleUrl:
          "",
      tech2: "Ios",
      image: "rosheta.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "الحسيني ماركت",
      projectContent:"Al-Hussaini Market: Your global companion for all your shopping needs, accessible wherever you go.",
       tech1: "Android",
      androidUrl:
      "https://play.google.com/store/apps/details?id=com.HSolution.elhusseny",
      appleUrl:
      "https://apps.apple.com/us/app/%D8%A7%D9%84%D8%AD%D8%B3%D9%8A%D9%86%D9%8A-%D9%85%D8%A7%D8%B1%D9%83%D8%AA/id6450274034",
      tech2: "Ios",
      image: "elhusseny.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),

    WorkModel(
      projectTitle: "Eldokan Delivery",
      projectContent:"Application of delivery officials for Al-Dukkan Foundation with the highest quality and fastest means",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.HSolutions.DokkanDelivery",
      appleUrl: "https://apps.apple.com/us/app/eldokan-%D8%A7%D9%84%D8%AF%D9%83%D8%A7%D9%86/id6451084277",
      tech2: "Ios",
      image: "dokkan.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "أولاد العجيلي",
      projectContent:"Awlad Al-Ajili for shopping",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.fastWorld.elogalymarket",
      appleUrl: "https://apps.apple.com/us/app/elogaly/id6450907783",
      tech2: "Ios",
      image: "elagelly.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),
    WorkModel(
      projectTitle: "So Sweet",
      projectContent:"All kinds of sweets and pastries with their original taste",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.fastWorld.swetty",
      appleUrl: "https://apps.apple.com/us/app/so-sweet/id6451386235",
      tech2: "Ios",
      image: "sweet.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),

    WorkModel(
      projectTitle: "إكسسوار",
      projectContent:"Excessoar :  Your global companion for all your shopping needs, accessible wherever you go",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.hsolutions.excessoar",
      appleUrl: "https://apps.apple.com/us/app/%D8%A5%D9%83%D8%B3%D8%B3%D9%88%D8%A7%D8%B1/id6478929965",
      tech2: "Ios",
      image: "exccessor.webp",
      stack: "Flutter | Dart | Bloc |Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),


  WorkModel(
      projectTitle: "خدمات عمال مصر",
      projectContent:"شركة سواعد الخليج شركة رائدة فى سوق العمل السعودى ، فى خدمة القطاع الصناعى تهدف الشركة إلى تحقيق رؤية المملكة 2030 لتساهم فى الوصول إلى اقتصاد مستدام كى تصبح الممكلة قوة صناعية رائدة من خلال توفير فرص العمل والوصول إلى اقتصاد مزدهر للملكة",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.fast_solutions.egworkers",
      appleUrl: "https://apps.apple.com/us/app/%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D8%B9%D9%85%D8%A7%D9%84-%D9%85%D8%B5%D8%B1/id6475497927?platform=iphone",
      tech2: "Ios",
      image: "mogam3.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),

    WorkModel(
      projectTitle: "Qommission",
      projectContent:"The Commission application provides many medical services and pharmacies",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.fastworld.qommsion",
      appleUrl: "",
      tech2: "Ios",
      image: "Qommission.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),

    WorkModel(
      projectTitle: "Diet Store",
      projectContent:"Online market for shopping help users to shop their needed from home",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.HSolutions.DietStore",
      appleUrl: "https://apps.apple.com/us/app/%D8%AF%D8%A7%D9%8A%D8%AA-%D8%B3%D8%AA%D9%88%D8%B1/id6443815886?platform=iphone",
      tech2: "Ios",
      image: "diet.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
    ),

    WorkModel(
      projectTitle: "سواعد الخليج",
      projectContent:"For Sawaed Al-Khaleej Company to become, within the Egyptian workers’ system, a service, industrial, and educational entity that affects the international economic system.",
      tech1: "Android",
      androidUrl: "https://play.google.com/store/apps/details?id=com.fast_solutions.sawaad",
      appleUrl: "https://apps.apple.com/us/app/%D8%B3%D9%88%D8%A7%D8%B9%D8%AF-%D8%A7%D9%84%D8%AE%D9%84%D9%8A%D8%AC/id6473706425",
      tech2: "Ios",
      image: "swaad.webp",
      stack: "Flutter|Dart|Bloc|Firebase Firestore|FirebaseMessaging Notification|GoogleMapLocation",
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
    EmailJS.init(const Options(
      publicKey: 'm2hngmCILd_bGhbyI',
      privateKey: '5fWqvt8BUymvvdl5jEAW2',
    ));

    try {
       await EmailJS.send(
          'service_27qfm2c',
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

  }
}
