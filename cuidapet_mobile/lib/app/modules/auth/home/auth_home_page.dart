import 'package:cuida_pet_mobile/app/core/constants/assets_constants.dart';
import 'package:cuida_pet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:flutter/material.dart';

class AuthHomePage extends StatefulWidget {
  const AuthHomePage({Key? key}) : super(key: key);

  @override
  _AuthHomePageState createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsConstants.LOGO_ASSET,
          width: 150.w,
          height: 200.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
