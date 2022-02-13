import 'package:cuida_pet_mobile/app/core/constants/route_constants.dart';
import 'package:cuida_pet_mobile/app/core/ui/ui_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: () => MaterialApp(
        theme: UiConfig.theme,
        title: UiConfig.title,
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants.AUTH_ROUTE, //parei em 04:16 da aula splash
        builder: asuka.builder,
        navigatorObservers: [
          asuka.asukaHeroController
        ],
      ).modular(),
    );
  }
}
