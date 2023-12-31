// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';
// import 'package:meals_app/main.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.tittle, required this.meals});

  final String tittle;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget body = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
             Text('uh oh... Nothing is here', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground,)
             ),
             const SizedBox(height: 16),
            Text('Try selecting a different category!!', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground,)
        )
        ],
        ),
      );
    
    if (meals.isNotEmpty) {
      body = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) =>MealItem(meal: meals[index])
            );

    }

    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: body,
    );
  }
}
