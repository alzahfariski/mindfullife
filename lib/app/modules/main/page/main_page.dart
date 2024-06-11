import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfullife/app/models/nav_model.dart';
import 'package:midfullife/app/modules/chat/pages/splash_chat_page.dart';
import 'package:midfullife/app/modules/home/pages/home_page.dart';
import 'package:midfullife/app/modules/komunitas/page/komunitas_page.dart';
import 'package:midfullife/app/modules/main/widgets/main_menu_widget.dart';
import 'package:midfullife/app/modules/mood/page/mood_page.dart';
import 'package:midfullife/app/modules/navbar/navbar_page.dart';
import 'package:midfullife/app/modules/profile/page/profile_page.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final moodNavKey = GlobalKey<NavigatorState>();
  final komunitasNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();

  int selectedTab = 0;
  List<NavModel> items = [];

  Offset position = const Offset(20, 200);

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        page: const HomePage(),
        navKey: homeNavKey,
      ),
      NavModel(
        page: const MoodPage(),
        navKey: moodNavKey,
      ),
      NavModel(
        page: const KomunitasPage(),
        navKey: komunitasNavKey,
      ),
      NavModel(
        page: const ProfilePage(),
        navKey: profileNavKey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: items[selectedTab].navKey.currentState?.canPop() ?? false,
      onPopInvoked: (didPop) async {
        if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
          items[selectedTab].navKey.currentState?.pop();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            IndexedStack(
              index: selectedTab,
              children: items
                  .map((page) => Navigator(
                        key: page.navKey,
                        onGenerateInitialRoutes: (navigator, initialRoute) {
                          return [
                            MaterialPageRoute(builder: (context) => page.page)
                          ];
                        },
                      ))
                  .toList(),
            ),
            Positioned(
              right: position.dx,
              top: position.dy,
              child: Draggable(
                feedback: Image.asset(
                  tLumiFull,
                  width: 70,
                ),
                childWhenDragging: Container(),
                onDragEnd: (DraggableDetails details) {
                  setState(() {
                    // Ensure the position is within the screen boundaries
                    double newX = details.offset.dx;
                    double newY = details.offset.dy;

                    // Adjust to ensure the FAB is within the screen
                    if (newY < 40) newY = 40;
                    if (newY > MediaQuery.of(context).size.height - 170) {
                      newY = MediaQuery.of(context).size.height - 170;
                    }

                    // Snap to the left or right side
                    if (newX < MediaQuery.of(context).size.width / 2) {
                      // Snap to the left side
                      newX = MediaQuery.of(context).size.width - 76;
                    } else {
                      newX = 20;
                      // Snap to the right side
                    }

                    position = Offset(newX, newY);
                  });
                },
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => SplashChatPage());
                  },
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Stack(
                      children: [
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: CircleAvatar(
                            backgroundColor: TColors.secondary700,
                            radius: 30,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          top: 0,
                          child: Column(
                            children: [
                              Image.asset(
                                tLumi,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Lumi',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      color: TColors.grey50,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 0,
            onPressed: () {
              Get.defaultDialog(
                title: 'Menu MindfulLife',
                titlePadding: const EdgeInsets.all(20),
                titleStyle: Theme.of(context).textTheme.titleLarge,
                backgroundColor: TColors.primary50,
                // contentPadding: const EdgeInsets.all(20),
                content: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MainMenuWidget(
                          icon: MingCuteIcons.mgc_paper_fill,
                          text: 'Artikel',
                        ),
                        MainMenuWidget(
                          icon: MingCuteIcons.mgc_target_fill,
                          text: 'Misi',
                        ),
                        MainMenuWidget(
                          icon: MingCuteIcons.mgc_schedule_fill,
                          text: 'CBT',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MainMenuWidget(
                          icon: MingCuteIcons.mgc_airdrop_fill,
                          text: 'Rexercise',
                        ),
                        MainMenuWidget(
                          icon: MingCuteIcons.mgc_artboard_fill,
                          text: 'Leaderboard',
                        ),
                        MainMenuWidget(
                          icon: MingCuteIcons.mgc_medal_fill,
                          text: 'Badge',
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 3, color: TColors.primary800),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              tLogoPrimary,
              width: 24,
            ),
          ),
        ),
        bottomNavigationBar: NavbarPage(
          pageIndex: selectedTab,
          onTap: (index) {
            if (index == selectedTab) {
              items[index]
                  .navKey
                  .currentState
                  ?.popUntil((route) => route.isFirst);
            } else {
              setState(() {
                selectedTab = index;
              });
            }
          },
        ),
      ),
    );
  }
}
