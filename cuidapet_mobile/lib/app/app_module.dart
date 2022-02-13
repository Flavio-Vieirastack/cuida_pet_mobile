import 'package:cuida_pet_mobile/app/core/constants/route_constants.dart';
import 'package:cuida_pet_mobile/app/modules/auth/auth_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
     ModuleRoute(RouteConstants.AUTH_ROUTE, module: AuthModule())
   ];

}