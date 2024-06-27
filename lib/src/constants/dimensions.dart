part of '../stage_navigation_bar.dart';

const _animationDirection = IndicatorAnimationDirection.topToBottom;

const Alignment _alignment = Alignment.center;

const double _barHeight = 60;

const double _barWidth = double.infinity;

const double _indicatorHeight = 5;

const EdgeInsets _itemPadding = EdgeInsets.all(0);

const Duration _duration = Duration(milliseconds: 200);

const double _radius = 10;

const BorderRadius _indicatorRadius =
    BorderRadius.all(Radius.circular(_radius));

const BorderRadius _topIndicatorRadius = BorderRadius.vertical(
  top: Radius.circular(_radius),
);

const BorderRadius _bottomIndicatorRadius = BorderRadius.vertical(
  bottom: Radius.circular(_radius),
);
