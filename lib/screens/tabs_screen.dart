import 'package:flutter/material.dart';
import 'package:recipes_app/screens/categories_screen.dart';
import 'package:recipes_app/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  final List<Widget> _screens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar?'),
        centerTitle: true,
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
              // color: Theme.of(context).colorScheme.secondary,
            ),
            label: 'Categorias',
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
