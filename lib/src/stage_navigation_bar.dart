import 'package:flutter/widgets.dart';

part 'constants/dimensions.dart';

part 'constants/enums.dart';

part 'widgets/navigation_bar.dart';

part 'widgets/navbar_item.dart';

part 'widgets/navbar_indicator.dart';

final class StageNavigationBar extends _NavigationBar {
  /// Create a beautiful navigation bar with multiple indicator animations on
  /// select item.
  /// #### The properties:
  /// - [animationDirection] : Define the animation shape on tap,
  /// default value is [IndicatorAnimationDirection.topToBottom].
  /// - [alignment] : Alignment of the items, default value is [Alignment.center].
  /// - [barHeight] : [StageNavigationBar] height, default value is 60.
  /// - [barWidth] : [StageNavigationBar] width, default value is [double.infinity].
  /// - [indicatorHeight] : Indicator line height, default value is 5.
  /// - [itemPadding] : Each item padding, default value is [EdgeInsets.zero].
  /// - [duration] : Indicator animation Transition duration.
  /// - [selectedIndex] : Current selected index.
  /// - [indicatorColor] : Color of the indicator and the gradient.
  /// - [onTap] : On item tap.
  /// - [barPadding] : [StageNavigationBar] internal padding.
  /// - [barMargin] : [StageNavigationBar] external padding.
  /// - [decoration] : [StageNavigationBar] box decoration.
  /// - [selectedIndicatorBorderRadius] : Selected item indicator border radius.
  /// if null it takes default border radius depends on [animationDirection] value.
  /// - [unselectedIndicatorBorderRadius] : Unselected item indicator border radius.
  /// if null it takes default border radius depends on [animationDirection] value.
  /// - [items] : [StageNavigationBar] items, List of widget.
  StageNavigationBar({
    super.key,
    super.animationDirection = _animationDirection,
    super.alignment = _alignment,
    super.barHeight = _barHeight,
    super.indicatorHeight = _indicatorHeight,
    super.barWidth = _barWidth,
    super.itemPadding = _itemPadding,
    super.duration = _duration,
    required super.selectedIndex,
    required super.indicatorColor,
    required List<Widget> items,
    required super.onTap,
    super.barPadding,
    super.barMargin,
    super.decoration,
    super.selectedIndicatorBorderRadius,
    super.unselectedIndicatorBorderRadius,
  }) : super(
          itemsCount: items.length,
          itemBuilder: (_, i) => items[i],
        );

  /// Create a beautiful navigation bar with multiple indicator animations on
  /// select item.
  /// #### The properties:
  /// - [animationDirection] : Define the animation shape on tap,
  /// default value is [IndicatorAnimationDirection.topToBottom].
  /// - [alignment] : Alignment of the item, default value is [Alignment.center].
  /// - [barHeight] : [StageNavigationBar] height, default value is 60.
  /// - [barWidth] : [StageNavigationBar] width, default value is [double.infinity].
  /// - [indicatorHeight] : Indicator line height, default value is 5.
  /// - [itemPadding] : Each item padding, default value is [EdgeInsets.zero].
  /// - [duration] : Indicator animation Transition duration.
  /// - [selectedIndex] : Current selected index.
  /// - [indicatorColor] : Color of the indicator and the gradient.
  /// - [onTap] : On item tap.
  /// - [barPadding] : [StageNavigationBar] internal padding.
  /// - [barMargin] : [StageNavigationBar] external padding.
  /// - [decoration] : [StageNavigationBar] box decoration.
  /// - [selectedIndicatorBorderRadius] : Selected item indicator border radius.
  /// if null it takes default border radius depends on [animationDirection] value.
  /// - [unselectedIndicatorBorderRadius] : Unselected item indicator border radius.
  /// if null it takes default border radius depends on [animationDirection] value.
  /// - [itemsCount] : Items count for [itemBuilder] callback.
  /// - [itemBuilder] : Callback will be called with indices greater than
  /// or equal to zero and less than [itemsCount].
  const StageNavigationBar.builder({
    super.key,
    super.animationDirection = _animationDirection,
    super.alignment = _alignment,
    super.barHeight = _barHeight,
    super.barWidth = _barWidth,
    super.indicatorHeight = _indicatorHeight,
    super.itemPadding = _itemPadding,
    super.duration = _duration,
    required super.selectedIndex,
    required super.indicatorColor,
    required super.itemsCount,
    required super.itemBuilder,
    required super.onTap,
    super.barPadding,
    super.barMargin,
    super.decoration,
    super.selectedIndicatorBorderRadius,
    super.unselectedIndicatorBorderRadius,
  });
}
