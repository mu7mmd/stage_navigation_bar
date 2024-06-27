part of '../stage_navigation_bar.dart';

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    super.key,
    required this.animationDirection,
    required this.alignment,
    required this.barHeight,
    required this.barWidth,
    required this.indicatorHeight,
    required this.itemPadding,
    required this.duration,
    required this.selectedIndex,
    required this.indicatorColor,
    required this.itemsCount,
    required this.itemBuilder,
    required this.onTap,
    required this.barPadding,
    required this.barMargin,
    required this.decoration,
    required this.selectedIndicatorBorderRadius,
    required this.unselectedIndicatorBorderRadius,
  }) : assert(itemsCount > -1, 'Items count must be >= 0');

  /// Define the animation shape when tap
  final IndicatorAnimationDirection animationDirection;

  /// Alignment of the item inside the shadow colors
  final AlignmentGeometry alignment;

  /// The height of each item
  final double barHeight;

  /// [StageNavigationBar] width
  final double barWidth;

  /// Indicator height
  final double indicatorHeight;

  /// Padding of each item
  final EdgeInsetsGeometry itemPadding;

  /// Indicator animation Transition duration
  final Duration duration;

  /// Current selected index
  final int selectedIndex;

  /// The color of the indicator and the shadow degrees
  final Color indicatorColor;

  /// Items count for [itemBuilder] callback.
  final int itemsCount;

  /// Callback will be called with indices greater than or equal to zero and
  /// less than [itemsCount].
  final IndexedWidgetBuilder itemBuilder;

  /// On item tap
  final ValueChanged<int> onTap;

  /// [StageNavigationBar] internal padding
  final EdgeInsetsGeometry? barPadding;

  /// [StageNavigationBar] external padding
  final EdgeInsetsGeometry? barMargin;

  /// [StageNavigationBar] box decoration
  final BoxDecoration? decoration;

  /// Selected item indicator border radius.
  /// if null it takes default border radius depends on [animationDirection] value.
  final BorderRadiusGeometry? selectedIndicatorBorderRadius;

  /// Unselected item indicator border radius.
  /// if null it takes default border radius depends on [animationDirection] value.
  final BorderRadiusGeometry? unselectedIndicatorBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: barWidth,
      decoration: decoration,
      padding: barPadding,
      margin: barMargin,
      child: Row(
        children: List.generate(
          itemsCount,
          (index) => Expanded(
            child: Padding(
              padding: itemPadding,
              child: _NavbarItem(
                itemEntering: animationDirection,
                alignment: alignment,
                onTap: () => onTap(index),
                height: barHeight,
                indicatorHeight: indicatorHeight,
                isSelected: selectedIndex == index,
                indicatorColor: indicatorColor,
                item: itemBuilder(context, index),
                duration: duration,
                selectedBorderRadius: selectedIndicatorBorderRadius,
                unselectedBorderRadius: unselectedIndicatorBorderRadius,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
