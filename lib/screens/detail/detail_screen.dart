import 'package:flutter/material.dart';
import 'package:recommendation_app/models/hotels.dart';
import 'package:recommendation_app/screens/detail/components/body.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class DetailScreenArguments {
  final String categoryName;
  DetailScreenArguments(this.categoryName);
}

class DetailScreen extends StatefulWidget {
  static String routeName = "/detail";
  DetailScreen({this.categoryName});
  final String categoryName;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<Hotel> hotels = [];

  void getData() async {
    String url = 'https://hotels-apis.herokuapp.com/';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<Hotel> jsonResponse = convert.jsonDecode(response.body);
      setState(() {
        hotels = jsonResponse;
      });
      print(hotels.length);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final DetailScreenArguments args =
        ModalRoute.of(context).settings.arguments;
    print(args.categoryName);
    return Scaffold(
      appBar: AppBar(
        title: Text(args.categoryName),
      ),
      body: Body(),
    );
  }
}
