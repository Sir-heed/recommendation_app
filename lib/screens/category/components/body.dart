import 'package:flutter/material.dart';
import 'package:recommendation_app/screens/detail/detail_screen.dart';

class Body extends StatelessWidget {
  Body({this.data});
  final List<String> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailScreen.routeName,
                arguments: DetailScreenArguments(data[index]),
              );
            },
            child: Material(
              elevation: 2,
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    data[index],
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
