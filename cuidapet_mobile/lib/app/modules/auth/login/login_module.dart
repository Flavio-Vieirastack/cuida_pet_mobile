import 'package:cuida_pet_mobile/app/core/constants/route_constants.dart';
import 'package:cuida_pet_mobile/app/modules/auth/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
     ChildRoute(Modular.initialRoute, child: (_, args) => const LoginPage()),
     
   ];

}