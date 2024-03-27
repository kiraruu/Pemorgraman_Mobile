import 'package:flutter/material.dart';
import 'package:flutter_praktikun4_soal/main.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.recipe.label),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.lightGreen[50]!],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                    child: Image(
                      image: AssetImage(widget.recipe.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    widget.recipe.label,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(20),
                      itemCount: widget.recipe.ingredients.length,
                      itemBuilder: (context, index) {
                        final Ingredient = widget.recipe.ingredients[index];
                        return ListTile(
                          title: Text(
                              '${Ingredient.quantity * _sliderVal} ${Ingredient.measure} ${Ingredient.name}'),
                          trailing: Icon(Icons.check_circle,
                              color: Colors.lightGreen),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Slider(
                    min: 1,
                    max: 10,
                    divisions: 10,
                    label: '${_sliderVal * widget.recipe.servings} servings',
                    value: _sliderVal.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderVal = newValue.round();
                      });
                    },
                    activeColor: Colors.blueGrey,
                    inactiveColor: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
