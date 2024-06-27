<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

![Static Badge](https://img.shields.io/badge/pub-v0.1.0-blue?logo=dart&link=https%3A%2F%2Fpub.dev%2Fpackages%2Fstage_navigation_bar)
![Static Badge](https://img.shields.io/badge/github-mu7mmd-limegreen?logo=github&link=https%3A%2F%2Fgithub.com%2Fmu7mmd)
![Static Badge](https://img.shields.io/badge/linkedin-3mdy-blue?logo=linkedin&link=https%3A%2F%2Fwww.linkedin.com%2Fin%2F3mdy)

A beautiful navigation bar with animation when select item.

![Top To Bottom](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/top-to-bottom.gif)

## Table of contents

1. [Installing](#installing)
2. [How To Use](#how_to_use)
3. [Showcase](#showcase)
4. [Example Project](#example)
5. [Contributors](#contributors)

## 🖥  Installing <a name="installing"></a>

### Add Dependency
```yaml
dependencies:
  stage_navigation_bar: ^0.1.0 #latest version
```

### Import Package
```dart
import 'package:stage_navigation_bar/stage_navigation_bar.dart';
```

## ℹ️ How To Use <a name="how_to_use"></a>

Place your `StageNavigationBar` to the `bottomNavigationBar` slot of a `Scaffold`. Or in the bottom
of your main page view.

### Code
```dart
class StageNavigationBarExample extends StatefulWidget {
  const StageNavigationBarExample({super.key});

  @override
  State<StageNavigationBarExample> createState() =>
      _StageNavigationBarExampleState();
}

class _StageNavigationBarExampleState extends State<StageNavigationBarExample> {
  /// Your initial page
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StageNavigationBar(
        items: const [
          Icon(Icons.home_filled, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        selectedIndex: _selectedIndex,
        indicatorColor: Colors.amber,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
```

### Properties
- `animationDirection`: Define the animation move shape when tap.
- `alignment`: Alignment of the items.
- `barHeight`: `StageNavigationBar` height.
- `barWidth`: `StageNavigationBar` width.
- `indicatorHeight`: Indicator line height.
- `itemPadding`: Each item padding.
- `duration`: Indicator animation Transition duration.
- `selectedIndex`*: Current selected index.
- `indicatorColor`*: Color of the indicator and the gradient.
- `onTap`*: On item tap.
- `barPadding`?: `StageNavigationBar` internal padding.
- `barMargin`?: `StageNavigationBar` external padding.
- `decoration`?: `StageNavigationBar` box decoration.
- `selectedIndicatorBorderRadius`?: Selected item indicator border radius.
- `unselectedIndicatorBorderRadius`?: Unselected item indicator border radius.
- `items`!: `StageNavigationBar` items, List of widget.
- `itemsCount`!: Items count for `itemBuilder` callback.
- `itemBuilder`!: Callback will be called with indices greater than or equal to zero and less than `itemsCount`.

### Default values
- `animationDirection = IndicatorAnimationDirection.topToBottom`,
- `alignment = Alignment.center`,
- `barHeight = 60`,
- `barWidth = double.infinity`
- `indicatorHeight = 5`,
- `itemPadding = const EdgeInsets.all(0)`,
- `duration = const Duration(milliseconds: 200)`,
- `selectedIndicatorBorderRadius: default value depends on 'animationDirection' value`,
- `unselectedIndicatorBorderRadius: default value depends on 'animationDirection' value`,

### IndicatorAnimationDirection Values
```dart
IndicatorAnimationDirection.top
IndicatorAnimationDirection.topToBottom
IndicatorAnimationDirection.centerToTop
IndicatorAnimationDirection.centerToBottom
IndicatorAnimationDirection.bottom
IndicatorAnimationDirection.bottomToTop
```

### Event
```dart
onTap: (index){

}
```

## 🕹 Showcase <a name="showcase"></a>

### `IndicatorAnimationDirection`

```dart
animationDirection: IndicatorAnimationDirection.top
```
![Top](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/top.gif)

---
```dart
animationDirection: IndicatorAnimationDirection.topToBottom
```
![Top To Bottom](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/top-to-bottom.gif)

---
```dart
animationDirection: IndicatorAnimationDirection.centerToTop
```
![Center To Top](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/center-to-top.gif)

---
```dart
animationDirection: IndicatorAnimationDirection.centerToBottom
```
![Center To Bottom](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/center-to-bottom.gif)

---
```dart
animationDirection: IndicatorAnimationDirection.bottom
```
![Bottom](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/bottom.gif)

---
```dart
animationDirection: IndicatorAnimationDirection.bottomToTop
```
![Bottom To Top](https://raw.githubusercontent.com/mu7mmd/stage_navigation_bar/main/doc/assets/bottom-to-top.gif)


## 📱 Example Project <a name="example"></a>

[Pub Example](https://pub.dev/packages/stage_navigation_bar/example)

[Github Example Project](https://github.com/mu7mmd/stage_navigation_bar/tree/main/example)

## 👨🏻‍💻 Contributors <a name="contributors"></a>

Mohammad Alamoudi [@mu7mmd](https://github.com/mu7mmd)
