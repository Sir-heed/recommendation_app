import 'package:flutter/material.dart';
import 'package:recommendation_app/screens/category/components/body.dart';

class CategoryScreen extends StatefulWidget {
  static String routeName = "/category";

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isSearching = false;
  List data = [];
  List filteredData = [];
  void _filterData(value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      isSearching = false;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  },
                )
        ],
        title: isSearching
            ? TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  _filterData(value);
                },
              )
            : Text('Category'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
