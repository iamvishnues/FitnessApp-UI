import 'package:flutter/material.dart';
import 'package:uidesign01/colors.dart';

import 'goal_card.dart';

class GoalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Padding(
        padding: EdgeInsets.only(left: 50, bottom: 10, right: 50, top: 15),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            child: Center(
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: blueish,
            ),
            width: 280,
            height: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "What are your Goals ?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50, top: 20, bottom: 20),
                child: Center(
                  child: Text(
                    "Let us Know what are your goals? so that we can help you to achieve them",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, bottom: 8.0, top: 8.0),
                child: GoalCard(
                  title: "Hillt",
                  subtitle: "Loose Weight",
                  icon: Icon(Icons.calendar_today),
                  isFilled: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, bottom: 8.0, top: 8.0),
                child: GoalCard(
                  title: "Hillt",
                  subtitle: "Be Toned",
                  icon: Icon(
                    Icons.directions_walk,
                    color: Colors.white,
                    size: 30,
                  ),
                  isFilled: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, bottom: 100, top: 8.0),
                child: GoalCard(
                  title: "Hillt",
                  subtitle: "Gain Muscle",
                  icon: Icon(
                    Icons.group_work,
                    size: 30,
                  ),
                  isFilled: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
