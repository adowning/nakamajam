import 'package:adowning_social_networking/core/app_export.dart';
import 'package:adowning_social_networking/presentation/trending_posts_page/models/trending_posts_model.dart';

class TrendingPostsController extends GetxController {
  TrendingPostsController(this.trendingPostsModelObj);

  Rx<TrendingPostsModel> trendingPostsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
