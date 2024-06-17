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

[![pub package](https://img.shields.io/badge/pub-v0.0.1-blue)](https://pub.dev/packages/stage_navigation_bar)

A beautiful navigation bar with animation when select navigation bar item.

<img src="https://github.com/mu7mmd/stage_navigation_bar/blob/develop/doc/assets/home-screenshot.png" width="300" alt="Home Screenshot">

## Getting started

```yaml
dependencies:
  stage_navigation_bar: ^0.0.1 #latest version
```

To get started, place your `StageNavigationBar` to the
bottomNavigationBar slot of a Scaffold. Or in the bottom of your main page view. It works with 2 or
more navigation elements.

## Simple Usage

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
      backgroundColor: Colors.purple,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: const Text('Stage Navigation Bar Example'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          Center(child: Text('Home Page')),
          Center(child: Text('Favorite Page')),
          Center(child: Text('Search Page')),
          Center(child: Text('Profile Page')),
        ],
      ),
      bottomNavigationBar: StageNavigationBar(
        barPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewPadding.bottom,
        ),
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
          border: Border(
            top: BorderSide(color: Colors.purpleAccent),
          ),
        ),
        // barMargin: MediaQuery.of(context).viewPadding,
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
