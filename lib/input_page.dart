import 'package:bmi_cal/ResultPage.dart';
import 'package:bmi_cal/RoundedIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  Gender? selectedGender;
  void maleGen() {
    setState(() {
      selectedGender = Gender.male;
    });
  }

  void femaleGen() {
    setState(() {
      selectedGender = Gender.female;
    });
  }

  int height = 180;
  int weight = 60;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //1st row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Male Card
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    // onPress: maleGen,
                    // or
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                //Female Card
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                    // onPress: femaleGen,
                    // or
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          // 2nd row slider
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    /*data:  SliderThemeData()
                        -> This approach creates a completely new SliderThemeData object with the
                          specified properties.
                         -> Any Slider widgets placed within this SliderTheme will inherit these specific styles.
                         -> Any properties you don't specify will inherit their default values from the SliderThemeData class
                         -> This is useful when you want a unique theme for a single slider or a small group of sliders.
                    */
                    /*
                    * or
                    * SliderTheme.of(context) retrieves existing theme\
                    * .copyWith() -> modifies existing theme
                    * SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x35EB1555),
                        thumbColor: Color(0xFFEB1555))
                         -> This approach retrieves the existing SliderThemeData from the widget tree using SliderTheme.of(context).
                        -> It then uses the copyWith method to create a copy of that theme data, modifying only the specified properties (active track color, etc.).
                        -> Any Slider widgets placed within this SliderTheme will inherit the modified theme.
                        -> This is useful when you want to make slight modifications to an existing theme that might be applied to multiple sliders throughout your app.

                        **/
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x35EB1555),
                        thumbColor: Color(0xFFEB1555)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 130,
                        max: 260,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),

          // 3rd row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: FaIcon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              height: 15,
                              width: 15,
                            ),
                            RoundedIconButton(
                              icon: FaIcon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                  // weight = weight + 1;
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
                // 3rd row 2nd container
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedIconButton(
                                  icon: FaIcon(FontAwesomeIcons.minus),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              SizedBox(
                                height: 15,
                                width: 15,
                              ),
                              RoundedIconButton(
                                  icon: FaIcon(FontAwesomeIcons.plus),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                      onPress: () {}),
                )
              ],
            ),
          ),
          // Expanded(
          //   flex: 0,
          //   child: Container(
          //     margin: EdgeInsets.only(top: 10),
          //     color: Color(0XFFEB1555),
          //     height: 80,
          //   ),
          // ),
          //
          //or

          //bottom container
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                          height: (height / 100), weight: weight, age: age),
                    ),
                  );
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// floatingActionButton: Theme(
//   data: ThemeData.light(),
//   child: FloatingActionButton(
//     onPressed: () {},
//     child: Icon(Icons.add),
//   ),
// ),
