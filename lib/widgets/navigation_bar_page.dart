import 'package:chance_changer_flutter_desktop_app/widgets/home_page_widget.dart';
import 'package:flutter/material.dart';

import './coin_flip_page.dart';
import './one_dice_page.dart';
import './two_dice_page.dart';
import '../my_flutter_app_icons.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const OneDiceRollPage(),
    const TwoDiceRollPage(),
    const CoinFlipPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              groupAlignment: 0.0,
              labelType: NavigationRailLabelType.selected,
              minWidth: 10,
              useIndicator: true,
              backgroundColor: const Color(0xFFa4c3b2),
              indicatorColor: const Color(0xFF1e1b18),
              selectedIconTheme: const IconThemeData(color: Color(0xFFf28604)),
              unselectedIconTheme: const IconThemeData(color: Color(0xFF001d3d)),
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(
                    Icons.house,
                  ),
                  label: Text(
                    'Home',
                    style: TextStyle(
                      color: Color(0xFF1b998b),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    MyFlutterApp.dice_six,
                  ),
                  label: Text(
                    '1 Dice',
                    style: TextStyle(
                      color: Color(0xFF1b998b),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    MyFlutterApp.dice,
                  ),
                  label: Text(
                    '2 Dice',
                    style: TextStyle(
                      color: Color(0xFF1b998b),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    MyFlutterApp.coins,
                  ),
                  label: Text(
                    'Coin Flipper',
                    style: TextStyle(
                      color: Color(0xFF1b998b),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: screens[_selectedIndex])
          ],
        ),
      ),
    );
  }
}
