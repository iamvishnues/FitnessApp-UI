import 'package:flutter/material.dart';
import 'package:uidesign01/colors.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final bool isFilled;

  const GoalCard({Key key, this.title, this.subtitle, this.icon, this.isFilled})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (isFilled
        ? (Container(
            height: 100,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [blueish, lightBlueish]),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(right: 25), child: icon)
              ],
            ),
          ))
        : (Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: blueish,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.7))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(right: 25), child: icon)
              ],
            ),
          )));
  }
}
