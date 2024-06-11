import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/chat/controllers/chat_controller.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';

class SplashChatPage extends StatelessWidget {
  SplashChatPage({super.key});

  final chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    chatController.startAnimation();
    return Scaffold(
      backgroundColor: TColors.primary500,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 303,
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 165,
                    width: 300,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: TColors.grey50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Saya Lumi',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Divider(
                          color: TColors.primary300,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Siap membantu dan menjadi teman untuk mu !',
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    tLumiFull,
                    width: 180,
                    height: 180,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
