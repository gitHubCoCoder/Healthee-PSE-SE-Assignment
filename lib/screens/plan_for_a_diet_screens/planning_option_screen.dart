import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './plan_for_a_diet_providers/user_health_data.dart';

class PlanningOptionScreen extends StatelessWidget {
  void _clickFollowAvailablePlan(BuildContext context) {
    Navigator.of(context).pushNamed('/health-data-input-screen');
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    final userHealthData = Provider.of<UserHealthData>(context);

    // TODO: implement screen to ask user for planing option
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Plan For A Diet',
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: screenWidth,
            child: Image.network(
              'https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2018/07/05/Pictures/_a021f0b0-8046-11e8-8bd0-affd130bd192.jpg',
            ),
          ),
          SizedBox(
            height: screenHeight / 12,
          ),
          GestureDetector(
            onTap: () {
              _clickFollowAvailablePlan(context);
            },
            child: Container(
              height: screenHeight / 10,
              width: screenWidth / (3 / 2.5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grid_on),
                    Text(
                      'Follow Available Plan',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 28,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: screenHeight / 10,
              width: screenWidth / (3 / 2.5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.mode_edit),
                    Text(
                      'Make Your Own Plan',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
