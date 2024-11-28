import 'package:explore/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final List<Widget>? actions;
  final bool showBackButton;
  final bool exitButton;

  const TopBar({
    Key? key,
    required this.title,
    this.showBackButton = true,
    this.exitButton = false,
    this.actions,
    this.color,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? Color.fromRGBO(239, 239, 239, 1),
      title: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
      leading: exitButton
          ? IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: const Icon(
                CupertinoIcons.xmark,
                color: Color.fromRGBO(0, 102, 177, 1),
              ))
          : showBackButton
              ? IconButton(
                  iconSize: 21,
                  icon: const Icon(
                    CupertinoIcons.arrow_left,
                    color: Color.fromRGBO(0, 102, 177, 1),
                  ),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()))
                  },
                )
              : null,
      actions: actions,
    );
  }
}
