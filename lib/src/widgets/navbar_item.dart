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
    this.onTap,
  });

  final StageNavigationEntering itemEntering;
  final AlignmentGeometry alignment;
  final double height;
  final double indicatorHeight;
  final bool isSelected;
  final Color indicatorColor;
  final Widget item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        height: height + indicatorHeight,
        child: Stack(
          alignment: switch (itemEntering) {
            StageNavigationEntering.top => Alignment.topCenter,
            StageNavigationEntering.center => Alignment.center,
            StageNavigationEntering.bottom => Alignment.bottomCenter,
          },
          children: [
            Align(alignment: alignment, child: item),
            _NavbarIndicator(
              indicatorHeight: indicatorHeight,
              height: height,
              show: isSelected,
              color: indicatorColor,
            )
          ],
        ),
      ),
    );
  }
}
