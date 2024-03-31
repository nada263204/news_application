import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_application/category/category_item.dart';
import 'package:news_application/category/category_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text('Pick your category of interest',
            style: Theme.of(context).textTheme.bodySmall,),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              itemCount: categoryModel.Categories.length,
              itemBuilder: ( context,  index) {
                return  category_item(category:categoryModel.Categories[index] , index: index,);
              },
            ),
          ),
        ],
      ),
    );
  }
}

