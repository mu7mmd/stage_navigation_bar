part of '../stage_navigation_bar.dart';

class _NavbarIndicator extends StatelessWidget {
  const _NavbarIndicator({
    required this.height,
    required this.indicatorHeight,
    required this.show,
    required this.color,
  });

  final double height;
  final double indicatorHeight;
  final bool show;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          height: show ? height : 0,
          width: double.infinity,
          duration: const Duration(milliseconds: 200),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  color.withOpacity(0.3),
                  color.withOpacity(0.2),
                  color.withOpacity(0.1),
                  color.withOpacity(0),
                ],
              ),
            ),
          ),
        ),
        AnimatedContainer(
          height: indicatorHeight,
          width: double.infinity,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: color,
            borderRadius: show
                ? const BorderRadius.vertical(top: Radius.circular(10))
                : const BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
        ),
      ],
    );
  }
}
