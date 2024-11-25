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
      title: Text(title),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBackPressed,
            )
          : null,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: onSearchPressed,
        ),
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: onFilterPressed,
        ),
      ],
    );
  }
}
