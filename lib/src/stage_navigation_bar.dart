import 'package:flutter/widgets.dart';

part 'constants/enums.dart';

part 'widgets/navbar_item.dart';

part 'widgets/navbar_indicator.dart';

class StageNavigationBar extends StatelessWidget {
  const StageNavigationBar({
    super.key,
    this.itemEntering = StageNavigationEntering.top,
    this.alignment = Alignment.center,
    this.itemHeight = 60,
    this.indicatorHeight = 5,
    this.barWidth = double.infinity,
    required this.selectedIndex,
    required this.indicatorColor,
    required this.items,
    required this.onTap,
    this.itemsPadding = const EdgeInsets.all(0),
    this.barPadding,
    this.barMargin,
    this.decoration,
  }) : assert(items.length > 1, 'Items length must be >= 2');

  /// Define the animation shape when tap
  final StageNavigationEntering itemEntering;

  /// Alignment of the item inside the shadow colors
  final AlignmentGeometry alignment;

  /// The height of each item
  final double itemHeight;

  /// Indicator height
  final double indicatorHeight;

  /// [StageNavigationBar] width
  final double barWidth;

  /// Current selected index
  final int selectedIndex;

  /// The color of the indicator and the shadow degrees
  final Color indicatorColor;

  /// [StageNavigationBar] items
  final List<Widget> items;

  /// On item tap
  final void Function(int) onTap;

  /// Padding of each item
  final EdgeInsetsGeometry itemsPadding;

  /// [StageNavigationBar] internal padding
  final EdgeInsetsGeometry? barPadding;

  /// [StageNavigationBar] external padding
  final EdgeInsetsGeometry? barMargin;

  /// [StageNavigationBar] box decoration
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final length = items.length;
    return Container(
      width: barWidth,
      decoration: decoration,
      padding: barPadding,
      margin: barMargin,
      child: Row(
        children: List.generate(
          length,
          (index) => Expanded(
            child: Padding(
              padding: itemsPadding,
              child: _NavbarItem(
                itemEntering: itemEntering,
                alignment: alignment,
                onTap: () => onTap(index),
                height: itemHeight,
                indicatorHeight: indicatorHeight,
                isSelected: selectedIndex == index,
                indicatorColor: indicatorColor,
                item: items[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
