import 'package:eduapp/Utils/colors.dart';
import 'package:flutter/material.dart';

class EducationAppMainScreen extends StatefulWidget {
  const EducationAppMainScreen({super.key});

  @override
  State<EducationAppMainScreen> createState() => _EducationAppMainScreenState();
}

class _EducationAppMainScreenState extends State<EducationAppMainScreen> {
  int selectedIndex = 0;
 static const List<Widget> _selectedPage = <Widget>[
  Scaffold(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _selectedPage.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor1 ,
        iconSize: 26,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
             activeIcon: Icon( Icons.star),
             icon: Icon(Icons.star_border),
              label: 'Featured'
          ),
          BottomNavigationBarItem(
             activeIcon: Icon( Icons.play_circle),
             icon: Icon(Icons.play_circle_outline),
              label: 'Learning'
          ),
          BottomNavigationBarItem(
             activeIcon: Icon( Icons.favorite),
             icon: Icon(Icons.favorite_border),
              label: 'Wishlist'
          ),
          BottomNavigationBarItem(
             activeIcon: Icon( Icons.settings),
             icon: Icon(Icons.settings_outlined),
              label: 'Setting'
          ),
        ],
        currentIndex: selectedIndex ,
        onTap: (int index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
