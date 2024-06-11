import 'package:get/get.dart';
import 'package:midfullife/app/modules/chat/pages/chat_lumi._page.dart';

class ChatController extends GetxController {
  static ChatController get instance => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    animate.value = true;
    await Future.delayed(
      const Duration(milliseconds: 1000),
    );
    Get.to(() => const ChatLumiPage());
  }

  
}
