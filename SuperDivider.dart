import 'package:flutter/material.dart';

///A more complex horizontal line used to split content.
class SuperDivider extends StatelessWidget {
  SuperDivider(
      {this.width = double.infinity,
      this.thickness = 1.0,
      this.indent = 0.0,
      this.endIndent = 0.0,
      this.color,
      this.spacing = 0.0,
      this.roundingAmount = 0.0,
      this.topSpacing,
      this.bottomSpacing});

  ///Width of the divider
  final double width;

  ///divider thickenss
  final double thickness;

  ///added space before the divider
  final double indent;

  ///added space after the divider
  final double endIndent;

  ///divider color (defaults to theme setting)
  final Color? color;

  ///how much total space to leave (top and bottom spacings are both half of this)
  final double spacing;

  ///amount of spacing above the divider (will use [spacing]/2 if null)
  final double? topSpacing;

  ///amount of spacing below the divider (will use [spacing]/2 if null)
  final double? bottomSpacing;

  ///how much to round the divider corners (in dp)
  final double roundingAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(indent, topSpacing ?? (spacing / 2), endIndent, bottomSpacing ?? (spacing / 2)),
      child: Container(
        width: width,
        height: thickness,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(roundingAmount),
          color: color ?? Theme.of(context).dividerColor,
        ),
      ),
    );
  }
}
