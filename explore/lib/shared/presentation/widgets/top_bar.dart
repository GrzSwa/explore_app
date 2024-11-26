import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackPressed;
  final VoidCallback onSearchPressed;
  final VoidCallback onFilterPressed;
  final bool showBackButton;
  const TopBar({
    Key? key,
    required this.title,
    required this.onBackPressed,
    required this.onSearchPressed,
    required this.onFilterPressed,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      title: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
      leading: showBackButton
          ? IconButton(
              iconSize: 21,
              icon: const Icon(
                CupertinoIcons.arrow_left,
                color: Color.fromRGBO(0, 102, 177, 1),
              ),
              onPressed: onBackPressed,
            )
          : null,
      actions: [
        IconButton(
          iconSize: 21,
          icon: const Icon(CupertinoIcons.search),
          onPressed: onSearchPressed,
        ),
        IconButton(
          iconSize: 21,
          icon: const Icon(CupertinoIcons.slider_horizontal_3),
          onPressed: onFilterPressed,
        ),
      ],
    );
  }
}
