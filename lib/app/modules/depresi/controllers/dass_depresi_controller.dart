import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/data/dass_data.dart';
import 'package:midfullife/app/models/dass_model.dart';
import 'package:midfullife/app/modules/depresi/page/depreesi_result_page.dart';

class DassDepresiController extends GetxController {
  static DassDepresiController get instance => Get.find();

  RxList<DassModel> dassDataDepresi = <DassModel>[].obs;

  RxInt result = 0.obs;
  RxInt hal = 0.obs;
  RxString depresiStatus = "Normal".obs;
  Rx<Color> colorStattus = const Color(0xff2ECC71).obs;
  RxDouble precent = 0.0.obs;
  RxList saran = [].obs;

  @override
  void onInit() {
    super.onInit();
    dassDataDepresi.assignAll(DassData.dassDataDepresi);
  }

  void nextTidak() {
    if (dassDataDepresi.length == hal.value + 1) {
      findStatus();
      result = result + 0;
      Get.to(() => const DepreesiResultPage());
    } else {
      result = result + 0;
      hal = hal + 1;
    }
  }

  void nextKadang() {
    if (dassDataDepresi.length == hal.value + 1) {
      findStatus();
      result = result + 1;
      Get.to(() => const DepreesiResultPage());
    } else {
      result = result + 1;
      hal = hal + 1;
    }
  }

  void nextSering() {
    if (dassDataDepresi.length == hal.value + 1) {
      findStatus();
      result = result + 2;
      Get.to(() => const DepreesiResultPage());
    } else {
      result = result + 2;
      hal = hal + 1;
    }
  }

  void nextSesuai() {
    if (dassDataDepresi.length == hal.value + 1) {
      findStatus();
      result = result + 3;
      Get.to(() => const DepreesiResultPage());
    } else {
      result = result + 3;
      hal = hal + 1;
    }
  }

  void findStatus() {
    if (result < 15) {
      depresiStatus.value = "Normal";
      colorStattus.value = const Color(0xff2ECC71);
      precent.value = 0.2;
      saran.value = [
        'Kamu selalu nampak tenang dan damai, salut.',
        'Baca buku atau tonton film komedi favorit.'
      ];
    }
    if (result.value >= 15 && result.value <= 18) {
      depresiStatus.value = "Ringan";
      colorStattus.value = const Color(0xffF1C40F);
      precent.value = 0.4;
      saran.value = [
        'Jalan-jalan di taman untuk udara segar.',
        'Meditasi atau pernapasan dalam 5-10 menit.'
      ];
    }
    if (result.value >= 19 && result.value <= 25) {
      depresiStatus.value = "Sedang";
      colorStattus.value = const Color(0xffF39C12);
      precent.value = 0.6;
      saran.value = [
        'Ceritakan perasaanmu kepada teman, keluarga atau Lumi.',
        'Ikuti kelas yoga atau olahraga ringan teratur.',
      ];
    }
    if (result.value >= 26 && result.value <= 33) {
      depresiStatus.value = "Parah";
      colorStattus.value = const Color(0xffE67E22);
      precent.value = 0.8;
      saran.value = [
        'Konsultasi dengan terapis untuk strategi mengelola stres.',
        'Relaksasi dengan mandi hangat dan aromaterapi.'
      ];
    }
    if (result.value > 34) {
      depresiStatus.value = "Sangat Parah";
      colorStattus.value = const Color(0xffE74C3C);
      precent.value = 1.0;
      saran.value = [
        'Cari bantuan medis atau konsultasi dengan psikiater.',
        'Coba teknik grounding dengan fokus pada indera.'
      ];
    }
  }
}
