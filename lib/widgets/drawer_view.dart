import 'package:flutter/material.dart';
import '../screens/plan_for_a_diet_screens/planning_option_screen.dart';

class DrawerView extends StatelessWidget {

  void clickPlanForADiet(BuildContext context) {
    Navigator.of(context).pushNamed('/planning-option-screen');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
              child: Text(
                'Features:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(
                'Plan For A Diet',
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 2.0,
                ),
              ),
              onTap: () => clickPlanForADiet(context),
            ),
          ),
        ],
      ),
    );
  }
}