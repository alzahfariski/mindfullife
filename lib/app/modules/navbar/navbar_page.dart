import 'dart:io';

import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class NavbarPage extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavbarPage({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: Platform.isAndroid ? 16 : 0,
      ),
      child: BottomAppBar(
        color: TColors.grey50,
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            color: TColors.primary800,
            child: Row(
              children: [
                navItem(
                  MingCuteIcons.mgc_home_4_line,
                  pageIndex == 0,
                  onTap: () => onTap(0),
                ),
                navItem(
                  MingCuteIcons.mgc_emoji_2_line,
                  pageIndex == 1,
                  onTap: () => onTap(1),
                ),
                const SizedBox(width: 80),
                navItem(
                  MingCuteIcons.mgc_group_2_line,
                  pageIndex == 2,
                  onTap: () => onTap(2),
                ),
                navItem(
                  MingCuteIcons.mgc_user_2_line,
                  pageIndex == 3,
                  onTap: () => onTap(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: selected ? Colors.white : Colors.white.withOpacity(0.4),
        ),
      ),
    );
  }
}
