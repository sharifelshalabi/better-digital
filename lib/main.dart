import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:lottie/lottie.dart';
import 'globals.dart';
import 'injection.dart';

import 'screens/auth/login_page.dart';
import 'screens/main/main_page.dart';
import 'shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();
  await init();
  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        startLocale: lan == "ar" ? const Locale('ar', 'AE') : const Locale('en', 'US'),
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('ar', 'AE'),
        ],
        useOnlyLangCode: false,
        path: 'assets/lang',
        // <-- change the path of the translation files
        fallbackLocale: const Locale('en', 'US'),
        saveLocale: true,
        child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  // isFirstTime
                  // ? const StartingPage()
                  // : userToken.isNotEmpty
                  // ?
                   Container()
              //: const LoginPage()
              ),
        );
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/images/background.png",
            fit: BoxFit.fill,
            height: 1.sh,
            width: 1.sw,
          ),
        ),
        Lottie.asset(
          'assets/images/splash.json',
          width: 200.r,
          height: 200.r,
          fit: BoxFit.fill,
          repeat: true,
        ),
      ],
    );
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "",
            theme: !isDark ?
            ThemeData.light().copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              colorScheme: const ColorScheme.light(
                  secondary: Color(0xffCCECF9), primary: Color(0xffE27323), background: Color(0xffFAFAFD), surface: Colors.black),
              primaryTextTheme: context.locale == const Locale('en', 'US')
                  ? ThemeData.light().textTheme.apply(fontFamily: 'SFUIText', bodyColor: Colors.black)
                  : ThemeData.light().textTheme.apply(fontFamily: 'Cairo', bodyColor: Colors.black),
              textTheme: context.locale == const Locale('en', 'US')
                  ? ThemeData.light().textTheme.apply(
                        fontFamily: 'SFUIText',
                        bodyColor: Colors.white,
                      )
                  : ThemeData.light().textTheme.apply(fontFamily: 'Cairo', bodyColor: Colors.white)
            ):
            ThemeData.dark().copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                colorScheme: const ColorScheme.dark(
                    secondary: Color(0xffCCECF9), primary: Color(0xff20aee3), background: Color(0xffFAFAFD), surface: Colors.black),
                primaryTextTheme: context.locale == const Locale('en', 'US')
                    ? ThemeData.light().textTheme.apply(fontFamily: 'SFUIText', bodyColor: Colors.black)
                    : ThemeData.light().textTheme.apply(fontFamily: 'Cairo', bodyColor: Colors.black),
                textTheme: context.locale == const Locale('en', 'US')
                    ? ThemeData.light().textTheme.apply(
                  fontFamily: 'SFUIText',
                  bodyColor: Colors.white,
                )
                    : ThemeData.light().textTheme.apply(fontFamily: 'Cairo', bodyColor: Colors.white)
            ),
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            locale: context.locale,
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: MyBehavior(),
                child: child!,
              );
            },
            home:
            // userToken.isNotEmpty ?  StartingPage() :
            LoginPage()
        );
      },
    );
  }
}
