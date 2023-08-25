library chromaflow_appbar;

import 'package:flutter/material.dart';

class GradientAppbar extends StatelessWidget implements PreferredSizeWidget{
  const GradientAppbar({
    super.key, 
    this.leading, 
    this.trailing, 
    required this.title, 
    this.height=56, 
    required this.gradientColors,
    required this.stops, 
    this.borderRadius, 
    this.shadowColor, 
    this.elevation, 
    this.bottom, 
    this.centerTitle=false,
  });

  final Widget? leading;
  final Widget? trailing;
  final double height;
  final Widget title;
  final List<Color> gradientColors;
  final List<double> stops;
  final BorderRadiusGeometry? borderRadius;
  final Color? shadowColor;
  final double? elevation;
  final Widget? bottom;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10).copyWith(top: 35),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: shadowColor ?? Colors.black26,
            offset: Offset(0, elevation ?? 1)
          )
        ],
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end:  Alignment.centerRight,
          stops: stops,
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leading ?? const SizedBox(width: 20, height: 56,),
          centerTitle
            ? const Spacer()
            : const SizedBox(),
          title,
          const Spacer(),
          trailing ?? const SizedBox(width: 20, height: 56,),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => Size(double.infinity, height);
}