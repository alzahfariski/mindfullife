import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/modules/misi/page/misi_result_page.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';

class MisiMembacaPage extends StatelessWidget {
  const MisiMembacaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Misi Membaca',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 2),
                      blurRadius: 12,
                      spreadRadius: -1,
                      color: Colors.black.withOpacity(0.1),
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage(
                      membaca,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Meraih Kebahagiaan Sejati dalam Hidup',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'Sumber: https://fpscs.uii.ac.id/blog/2020/07/04/meraih-kebahagiaan-sejati/',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: TColors.primary600,
                    ),
              ),
              const SizedBox(height: 20),
              Text(
                'Bagaimana meraih kebahagiaan?',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                'Kebahagiaan tidak dapat ditunggu atau terjadi secara kebetulan, tetapi hal itu merupakan buah dari usaha yang kuat dan terus-menerus. Menurut Seligman (2011) ada lima elelmen penting dalam kebahagiaan yang disingkat dengan PERMA, yaitu:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),
              Text(
                '1. Positive Emotion (P)',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Kemampuan untuk tetap optimis dan melihat masa lalu, masa sekarang, dan masa depan dari perspektif yang konstruktif akan membuat seseorang lebih bahagia. Kesenangan, keceriaan, kebahagiaan merupakan bagian dari emosi positif.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),
              Text(
                '2. Engagement (E)',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Fokus pada sesuatu yang dikerjakan dan benar-benar merasa terlibat penuh dengan segala hal yang sedang dikerjakan. Flow adalah kondisi ketika kita merasa terhanyut dalam tugas atau aktivitas dengan bahagia sehingga waktu benar-benar “berlalu dengan cepat”. Hal tersebut biasanya dialami oleh individu yang merasakan keterlibatan penuh ini.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),
              Text(
                '3. Relationship/Positive Relationship (R)',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Manusia adalah makhluk sosial yang perkembangannya memerlukan hubungan yang intim, penuh cinta, dan memiliki interaksi fisik dan emosi yang kuat dengan orang lain. Hubungan positif dengan orang tua, saudara kandung, teman sebaya, rekan kerja maupun tetangga dapat meningkatkan kebahagiaan. Memiliki hubungan positif yang kuat dengan orang lain juga dapat menjadi sumber dukungan bagi individu di masa-masa sulitnya.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),
              Text(
                '4. Meaning (M)',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Menyadari tujuan kita diciptakan di bumi dapat mendorong kita menjadi manusia seutuhnya. Agama dan spiritualitas memberikan banyak makna pada individu. Kehidupan juga menjadi lebih bermakna jika individu dapat mendedikasikan dirinya pada hal yang berdampak pada`orang lain, bukan hanya pada diri sendiri.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),
              Text(
                '5.Accomplisment/Achievement (A)',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Memiliki tujuan dan ambisi dalam hidup dapat membantu manusia mencapai hal-hal yang dapat memberi rasa pencapaian atau prestasi. Manusia harus membuat tujuan realistis yang dapat dipenuhi. Berupaya untuk mencapai tujuan tersebut saja sudah dapat memberi rasa kepuasan, lebih-lebih  ketika akhirnya tujuan tersebut dapat dicapai maka akan muncul rasa bangga dan berhasil. Memiliki prestasi dalam hidup adalah penting untuk mendorong diri kita untuk terus berkembang.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const MisiResultPage());
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: TColors.primary800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Dapatkan Point",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: TColors.grey50,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
