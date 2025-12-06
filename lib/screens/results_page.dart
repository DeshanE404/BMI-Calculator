import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../bottom_button.dart';

class ResultsPage extends StatelessWidget {
   ResultsPage({required this.bmiResult,required this.interpatation,required this.resultText});


  final String bmiResult;
  final String resultText;
  final String interpatation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),alignment: Alignment.bottomLeft, child: Text('Your Results', style: kTitleTextStyle,),),),
          Expanded(flex: 5,
    child: ReusableCard(
              colour: kActiveCardColour,cardChild: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Text(resultText.toUpperCase(),style: kResultTextStyle,),
        Text(bmiResult,style: kBmiStyle,),
        Text(interpatation,
          textAlign: TextAlign.center,
          style: kBodyTextStyle,)

      ],
    )),
          ),
          BottomButton(buttonTitle: 'RE-Calculate',
    onTap: (){
            Navigator.pop(context);
    },
          ),
        ],
      ),
    );
  }
}
