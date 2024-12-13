import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class DraggableAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Brightness brightness;
  final Color backgroundColor;

  const DraggableAppbar({
    super.key,
    required this.title,
    required this.brightness,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        getAppBarTitle(title),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: SizedBox(
              height: kToolbarHeight,
              width: 200,
              child: GestureDetector(onTap: () {
                windowManager.startDragging();
              })),
        )
      ],
    );
  }

  Widget getAppBarTitle(String title) {
    return DragToMoveArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Align(
          alignment: AlignmentDirectional.center,
          child: Text(title),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
