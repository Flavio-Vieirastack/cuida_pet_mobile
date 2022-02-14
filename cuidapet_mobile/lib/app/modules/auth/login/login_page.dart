
import 'package:cuida_pet_mobile/app/core/constants/assets_constants.dart';
import 'package:cuida_pet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuida_pet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:cuida_pet_mobile/app/modules/auth/login/widgets/login_form.dart';
import 'package:cuida_pet_mobile/app/modules/auth/login/widgets/register_buttons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(top: 1.statusBarHeight + 30, left: 20, right: 20),
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: <Widget>[
              Image.asset(
                AssetsConstants.LOGO_ASSET,
                width: 150.w,
                fit: BoxFit.fill,
              ),
              const LoginForm(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: context.primaryColor,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ou',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: context.primaryColor),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: context.primaryColor,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
             const RegisterButtons()
            ],
          ),
        ),
      ),
    );
  }
}
