import 'package:cuida_pet_mobile/app/core/constants/assets_constants.dart';
import 'package:cuida_pet_mobile/app/core/constants/route_constants.dart';
import 'package:cuida_pet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:cuida_pet_mobile/app/models/user_model.dart';
import 'package:cuida_pet_mobile/app/modules/core/auth/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class AuthHomePage extends StatefulWidget {
  final AuthStore _authStore;
  const AuthHomePage({Key? key, required AuthStore authStore})
      : _authStore = authStore,
        super(key: key);

  @override
  _AuthHomePageState createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  void initState() {
    super.initState();
    reaction<UserModel?>((_) => widget._authStore.userModel, (userModel) {
      if (userModel != null && userModel.email.isNotEmpty){
        Modular.to.navigate(RouteConstants.HOME_ROUTE);
      } else {
        Modular.to.navigate(RouteConstants.AUTH_ROUTE_LOGIN);
      }
    });
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      widget._authStore.loadUser();
    });
  }

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
