import 'package:get/get.dart';
import 'package:vaulty/constants/constants.dart';
import 'package:vaulty/services/storage_service.dart';

class IndexController extends GetxController {
  late StorageService? _storageService;
  var _isUserNavigatingToSecurityPageForFirstTime = true.obs;

  bool get isUserNavigatingToSecurityPageForFirstTime =>
      _isUserNavigatingToSecurityPageForFirstTime.value;

  @override
  void onInit() {
    super.onInit();
    _storageService = StorageService();
    checkIfIsNewUser();
  }

  void checkIfIsNewUser() async {
    _isUserNavigatingToSecurityPageForFirstTime.value =
        (await _storageService!.read(IS_NEW_USER) ?? 'true') == 'true';

    if (_isUserNavigatingToSecurityPageForFirstTime.value) {
      await _storageService!.write(key: IS_NEW_USER, data: 'false');
    }
  }

  void registerNavigationToSecurityOnboardingEvent() {
    _isUserNavigatingToSecurityPageForFirstTime.value = false;
  }

  @override
  void onClose() {
    super.onClose();
    _storageService = null;
  }
}
