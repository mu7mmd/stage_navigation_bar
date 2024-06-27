part of '../stage_navigation_bar.dart';

class _NavbarItem extends StatelessWidget {
  const _NavbarItem({
    required this.itemEntering,
    required this.alignment,
    required this.height,
    required this.indicatorHeight,
    required this.isSelected,
    required this.indicatorColor,
    required this.item,
    required this.onTap,
    required this.duration,
    required this.selectedBorderRadius,
    required this.unselectedBorderRadius,
  });

  final IndicatorAnimationDirection itemEntering;
  final AlignmentGeometry alignment;
  final double height;
  final double indicatorHeight;
  final bool isSelected;
  final Color indicatorColor;
  final Widget item;
  final VoidCallback? onTap;
  final Duration duration;
  final BorderRadiusGeometry? selectedBorderRadius;
  final BorderRadiusGeometry? unselectedBorderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        height: height,
        child: switch (itemEntering) {
          IndicatorAnimationDirection.top => _StackItem(
              indicatorAlignment: Alignment.topCenter,
              itemAlignment: alignment,
              item: item,
              indicator: !isSelected
                  ? _TopIndicator(
                      height: 0,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          unselectedBorderRadius ?? _topIndicatorRadius,
                      duration: duration,
                    )
                  : _TopIndicator(
                      height: height,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          selectedBorderRadius ?? _bottomIndicatorRadius,
                      duration: duration,
                    ),
            ),
          IndicatorAnimationDirection.topToBottom => _StackItem(
              indicatorAlignment: Alignment.topCenter,
              itemAlignment: alignment,
              item: item,
              indicator: !isSelected
                  ? _BottomIndicator(
                      height: 0,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          unselectedBorderRadius ?? _bottomIndicatorRadius,
                      duration: duration,
                    )
                  : _BottomIndicator(
                      height: height,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius: selectedBorderRadius ?? _topIndicatorRadius,
                      duration: duration,
                    ),
            ),
          IndicatorAnimationDirection.centerToTop => _StackItem(
              indicatorAlignment: Alignment.center,
              itemAlignment: alignment,
              item: item,
              indicator: !isSelected
                  ? _TopIndicator(
                      height: 0,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius: unselectedBorderRadius ?? _indicatorRadius,
                      duration: duration,
                    )
                  : _TopIndicator(
                      height: height,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          selectedBorderRadius ?? _bottomIndicatorRadius,
                      duration: duration,
                    ),
            ),
          IndicatorAnimationDirection.centerToBottom => _StackItem(
              indicatorAlignment: Alignment.center,
              itemAlignment: alignment,
              item: item,
              indicator: !isSelected
                  ? _BottomIndicator(
                      height: 0,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius: unselectedBorderRadius ?? _indicatorRadius,
                      duration: duration,
                    )
                  : _BottomIndicator(
                      height: height,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius: selectedBorderRadius ?? _topIndicatorRadius,
                      duration: duration,
                    ),
            ),
          IndicatorAnimationDirection.bottom => _StackItem(
              indicatorAlignment: Alignment.bottomCenter,
              itemAlignment: alignment,
              item: item,
              indicator: !isSelected
                  ? _BottomIndicator(
                      height: 0,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          unselectedBorderRadius ?? _bottomIndicatorRadius,
                      duration: duration,
                    )
                  : _BottomIndicator(
                      height: height,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius: selectedBorderRadius ?? _topIndicatorRadius,
                      duration: duration,
                    ),
            ),
          IndicatorAnimationDirection.bottomToTop => _StackItem(
              indicatorAlignment: Alignment.bottomCenter,
              itemAlignment: alignment,
              item: item,
              indicator: !isSelected
                  ? _TopIndicator(
                      height: 0,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          unselectedBorderRadius ?? _topIndicatorRadius,
                      duration: duration,
                    )
                  : _TopIndicator(
                      height: height,
                      indicatorHeight: indicatorHeight,
                      indicatorColor: indicatorColor,
                      borderRadius:
                          selectedBorderRadius ?? _bottomIndicatorRadius,
                      duration: duration,
                    ),
            ),
        },
      ),
    );
  }
}

class _StackItem extends StatelessWidget {
  const _StackItem({
    required this.indicatorAlignment,
    required this.itemAlignment,
    required this.item,
    required this.indicator,
  });

  final Alignment indicatorAlignment;
  final AlignmentGeometry itemAlignment;
  final Widget item;
  final Widget indicator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: indicatorAlignment,
      children: [Align(alignment: itemAlignment, child: item), indicator],
    );
  }
}
