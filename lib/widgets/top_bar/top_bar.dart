import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/constants/app_colors.dart';
import 'package:the_basics/widgets/top_bar/top_bar_desktop.dart';
import 'package:the_basics/widgets/top_bar/top_bar_mobile.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{
  const TopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TopBarMobile(),
      tablet: TopBarDesktop(),
      desktop: TopBarDesktop(),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(70);
}