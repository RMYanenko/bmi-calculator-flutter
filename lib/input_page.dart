import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum UserGerden{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  //1  = male, 2 = female
  void updateColour(UserGerden gender) {
    //male press
    if ( gender == UserGerden.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //female press
    if (gender == UserGerden.female) {
      if ( femaleCardColor == inactiveCardColor ) {
        femaleCardColor = activCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(UserGerden.male);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor,
                        cardChild: IconContent(
                          urlImg: AssetImage('assets/img/mars.png'),
                          iconLabel: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(UserGerden.female);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: IconContent(
                          urlImg: AssetImage('assets/img/venus.png'),
                          iconLabel: 'Famale',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}
