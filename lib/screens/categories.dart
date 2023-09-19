import 'package:flutter/material.dart';
import 'package:pistapp/services/utils.dart';
import 'package:pistapp/widgets/categories_widget.dart';
import 'package:pistapp/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  List<Color> gridColor = [
    const Color(0xFFE57373),
    const Color(0xFFFF9100),
    const Color(0xFF43A047),
    const Color(0xFFF1C481),
    const Color(0xFF8D6E63),
    const Color(0xFFFFB74D),
  ];
  List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'images/fruits.png',
      'catText': 'Fruits',
    },
    {
      'imgPath': 'images/vegetables.png',
      'catText': 'Vegetables',
    },
    {
      'imgPath': 'images/spinach.png',
      'catText': 'Herbs',
    },
    {
      'imgPath': 'images/nuts.png',
      'catText': 'Nuts',
    },
    {
      'imgPath': 'images/spices.png',
      'catText': 'Spices',
    },
    {
      'imgPath': 'images/grains.png',
      'catText': 'Grains',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 300 / 250,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            children: List.generate(6, (index) {
              return CategoriesWidget(
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passsedColor: gridColor[index],
              );
            }),
          ),
        ));
  }
}
