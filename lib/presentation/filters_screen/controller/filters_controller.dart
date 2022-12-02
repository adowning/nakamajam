import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/filters_screen/models/filters_model.dart';

class FiltersController extends GetxController {
  Rx<FiltersModel> filtersModelObj = FiltersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
