import 'package:flutter/material.dart';
import 'package:tester_app/ui/base_widgets/base_constants/base_border.dart';

typedef AppBarBuilder = PreferredSizeWidget Function(BuildContext context, double height);

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget flexibleSpace;
  final List<Widget> actions;

  final PreferredSizeWidget bottom;

  final double toolbarHeight;

  final Widget leading;

  final bool automaticallyImplyLeading;

  final Widget title;

  final double elevation;

  final Color shadowColor;

  final Color backgroundColor;

  final Brightness brightness;

  final IconThemeData iconTheme;

  final IconThemeData actionsIconTheme;

  final TextTheme textTheme;

  final bool primary;

  final bool centerTitle;

  final double bottomOpacity;

  final bool excludeHeaderSemantics;

  final double titleSpacing;

  final double toolbarOpacity;

  final double leadingWidth;

  final AppBarBuilder builder;

  @override
  Widget build(BuildContext context) => AppBar(
        actions: actions,
        actionsIconTheme: actionsIconTheme,
        automaticallyImplyLeading: automaticallyImplyLeading,
        backgroundColor: backgroundColor,
        bottom: bottom,
        bottomOpacity: bottomOpacity,
        brightness: brightness,
        centerTitle: centerTitle,
        elevation: elevation,
        excludeHeaderSemantics: excludeHeaderSemantics,
        flexibleSpace: flexibleSpace,
        iconTheme: iconTheme,
        key: key,
        leading: leading,
        leadingWidth: leadingWidth,
        primary: primary,
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BaseBorderRadiusDirectional.bottom(),
        ),
        textTheme: textTheme,
        title: title,
        titleSpacing: titleSpacing,
        toolbarHeight: toolbarHeight,
        toolbarOpacity: toolbarOpacity,
      );

  BaseAppBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.actionsIconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.builder,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(toolbarHeight ?? kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0));
}
