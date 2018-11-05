import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  ProductPage(this.title, this.price, this.description, this.imageUrl);
/* 
  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('This action cannot be undone!'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('DELETE'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              )
            ],
          );
        });
  } */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oswald'),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Union Square San Francisco',
                    style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      '|',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Text(
                    '\$' + price.toString(),
                    style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
