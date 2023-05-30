import 'package:flutter/material.dart';
import 'package:recipes_app/components/recipe_item.dart';
import 'package:recipes_app/data/dummy_data.dart';
import 'package:recipes_app/models/category.dart';

class CategoriesRecipesScreen extends StatelessWidget {
  const CategoriesRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final categoryRecipes = dummyRecipes.where((recipe) {
      return recipe.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: categoryRecipes.length,
          itemBuilder: (ctx, index) {
            return RecipeItem(
              recipe: categoryRecipes[index],
            );
          }),
    );
  }
}
