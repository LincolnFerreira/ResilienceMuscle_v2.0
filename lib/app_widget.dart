import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:resilience_muscle/subs/class/cores.dart';

import 'subs/controllers/widgetControllers/switch_controller.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: SwitchController.instance,
      builder: (context, child) {
        return MaterialApp.router(
          builder: Asuka.builder,
          title: 'Resilience Muscle',
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,

          darkTheme: ThemeData(brightness: Brightness.dark),
          theme: ThemeData(
            // brightness: ThemeApp.darkTheme,
            // ? Brightness.dark
            // : Brightness.light,
            scaffoldBackgroundColor: Pallete.dark,
            fontFamily: 'Inter',
            textTheme: const TextTheme(
              headline1: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Inter',
              ),
            ),
            primaryColor: Colors.red,
            //visualDensity pesquisar sobre
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
          color: Pallete.white,
          // routes: {
          //   '/': (context) => const OnboardPage(),
          //   '/cadastroUser': (context) => CadastroPage(),
          //   '/homeUser': (context) => const HomeUserPage(),
          //   '/settingPage': (context) => const SettingPage(),
          // },
        );
      },
    );
  }
}
