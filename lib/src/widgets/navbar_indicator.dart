part of '../stage_navigation_bar.dart';

class _TopIndicator extends StatelessWidget {
  const _TopIndicator({
    required this.height,
    required this.indicatorHeight,
    required this.indicatorColor,
    required this.borderRadius,
    required this.duration,
  });

  final double height;
  final double indicatorHeight;
  final Color indicatorColor;
  final BorderRadiusGeometry borderRadius;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        _Indicator(
          indicatorHeight: indicatorHeight,
          borderRadius: borderRadius,
          color: indicatorColor,
          duration: duration,
        ),
        _IndicatorColorsShadow(
          height: height,
          colors: [
            indicatorColor.withOpacity(0.0),
            indicatorColor.withOpacity(0.1),
            indicatorColor.withOpacity(0.2),
            indicatorColor.withOpacity(0.3),
          ],
          duration: duration,
        )
      ],
    );
  }
}

class _BottomIndicator extends StatelessWidget {
  const _BottomIndicator({
    required this.height,
    required this.indicatorHeight,
    required this.indicatorColor,
    required this.borderRadius,
    required this.duration,
  });

  final double height;
  final double indicatorHeight;
  final Color indicatorColor;
  final BorderRadiusGeometry borderRadius;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _IndicatorColorsShadow(
          height: height,
          colors: [
            indicatorColor.withOpacity(0.3),
            indicatorColor.withOpacity(0.2),
            indicatorColor.withOpacity(0.1),
            indicatorColor.withOpacity(0.0),
          ],
          duration: duration,
        ),
        _Indicator(
          indicatorHeight: indicatorHeight,
          borderRadius: borderRadius,
          color: indicatorColor,
          duration: duration,
        ),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({
    required this.indicatorHeight,
    required this.borderRadius,
    required this.color,
    required this.duration,
  });

  final double indicatorHeight;
  final BorderRadiusGeometry borderRadius;
  final Color color;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: indicatorHeight,
      width: double.infinity,
      duration: duration,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
    );
  }
}

class _IndicatorColorsShadow extends StatelessWidget {
  const _IndicatorColorsShadow({
    required this.height,
    required this.colors,
    required this.duration,
  });

  final double height;
  final List<Color> colors;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: height,
      width: double.infinity,
      duration: duration,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: colors,
          ),
        ),
      ),
    );
  }
}
