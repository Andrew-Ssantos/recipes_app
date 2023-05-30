import 'package:flutter/material.dart';
import 'package:recipes_app/models/recipe.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen({super.key});

  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
        width: 340,
        height: 250,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(
            color: Colors.grey,
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final recipe = ModalRoute.of(context)?.settings.arguments as Recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  width: 4,
                  color: Colors.black54,
                ),
              )),
              child: Image.network(
                recipe.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _createSectionTitle(context, 'Ingredientes'),
            _createSectionContainer(
              ListView.builder(
                itemCount: recipe.ingredients.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 10,
                      ),
                      child: Text(recipe.ingredients[index]),
                    ),
                  );
                },
              ),
            ),
            _createSectionTitle(context, 'Modo de Preparo'),
            _createSectionContainer(
              ListView.builder(
                itemCount: recipe.steps.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                        title: Text(recipe.steps[index]),
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
