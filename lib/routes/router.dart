import 'package:get/get.dart';
import 'package:vaulty/constants/constants.dart';
import 'package:vaulty/ui/views/add_account_info_view.dart';
import 'package:vaulty/ui/views/index.dart';
import 'package:vaulty/ui/views/security_onboarding_view.dart';

class VaultyRouter {
  static List<GetPage> routes = [
    GetPage(
      name: InitialRoute,
      page: () => IndexView(),
    ),
    GetPage(
      name: AddAccountInfoRoute,
      page: () => AddAccountInfoView(),
    ),
    GetPage(
      name: SecurityOnboardingRoute,
      page: () => SecurityOnboardingView(),
    ),
  ];
}
