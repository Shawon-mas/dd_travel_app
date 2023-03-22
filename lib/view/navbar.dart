import 'package:dd_travel_app/view/Home/home.dart';
import 'package:dd_travel_app/view/explore/explore.dart';
import 'package:dd_travel_app/view/for_you/for_you.dart';
import 'package:dd_travel_app/view/profile/profile.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _bodyView = <Widget>[
    HomePage(),
    ExplorePage(),
    ForYouPage(),
    Text(
      'World',
      style: optionStyle,
    ),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  Widget _tabItem(Widget child, String label, {bool isSelected = false}) {
    return AnimatedContainer(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 500),
        decoration: !isSelected
            ? null
            : BoxDecoration(
          borderRadius: BorderRadius.circular(10),

        ),
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            child,
            Text(label, style: TextStyle(fontSize: 7)),
          ],
        ));
  }

  final List<String> _labels = ['Home', 'Explore', 'For You', 'Work', 'Profile'];

  @override
  Widget build(BuildContext context) {
    List<Widget> _icons = const [
      Icon(Icons.home_outlined),
      Icon(Icons.explore_outlined),
      Icon(Icons.bookmark_added),
      Icon(Icons.web_outlined),
      Icon(Icons.person_pin)
    ];

    return Scaffold(

      body: Center(
        child: _bodyView.elementAt(_selectedIndex),
      ),
      extendBody: true,
      bottomNavigationBar: Container(

        height: 70,
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child: TabBar(
                onTap: (x) {
                  setState(() {
                    _selectedIndex = x;
                  });
                },
                labelColor: Colors.green,
                unselectedLabelColor: Colors.blueGrey,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide.none,
                ),
                tabs: [
                  for (int i = 0; i < _icons.length; i++)
                    _tabItem(
                      _icons[i],
                      _labels[i],
                      isSelected: i == _selectedIndex,
                    ),
                ],
                controller: _tabController),
          ),
        ),
      ),
    );
  }
}
