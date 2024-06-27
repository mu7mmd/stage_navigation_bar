import 'package:flutter/material.dart';
import 'package:stage_navigation_bar/stage_navigation_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: 'Stage Navigation Bar Example',
      home: const StageNavigationBarExample(),
    );
  }
}

class StageNavigationBarExample extends StatefulWidget {
  const StageNavigationBarExample({super.key});

  @override
  State<StageNavigationBarExample> createState() =>
      _StageNavigationBarExampleState();
}

class _StageNavigationBarExampleState extends State<StageNavigationBarExample> {
  /// Your initial page
  int _selectedIndex = 0;

  final _icons = [
    Icons.home_filled,
    Icons.favorite,
    Icons.search,
    Icons.person
  ];

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
      // bottomNavigationBar: StageNavigationBar.builder(
      //   barPadding: EdgeInsets.only(
      //     bottom: MediaQuery.of(context).viewPadding.bottom,
      //   ),
      //   decoration: const BoxDecoration(
      //     color: Colors.deepPurple,
      //     border: Border(
      //       top: BorderSide(color: Colors.purpleAccent),
      //     ),
      //   ),
      //   itemsCount: 4,
      //   itemBuilder: (context, index) => Icon(
      //     _icons[index],
      //     color: index == _selectedIndex ? Colors.amber : Colors.white,
      //   ),
      //   selectedIndex: _selectedIndex,
      //   indicatorColor: Colors.amber,
      //   onTap: (int index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
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
        items: _icons.map((icon) => Icon(icon, color: Colors.white)).toList(),
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
