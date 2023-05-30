import 'package:flutter/material.dart';
import 'package:recipes_app/screens/category_recipes_screen.dart';
import 'package:recipes_app/screens/recipe_details_screen.dart';
import 'package:recipes_app/screens/tabs_screen.dart';
import 'package:recipes_app/utils/app_routes.dart';

void main() => runApp(const RecipesApp());

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.lightBlue,
        ),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(245, 245, 220, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_RECIPES: (ctx) => const CategoriesRecipesScreen(),
        AppRoutes.RECIPE_DETAILS: (ctx) => const RecipeDetailsScreen(),
      },
    );
  }
}
