import 'package:flutter/material.dart';
import 'story_brain.dart';

StoryBrain storybrain = StoryBrain();

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical:50.0, horizontal:15.0),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storybrain.getquesttitle(),
                  style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: (){
                  print('Button1 pressed');
                  setState(() {
                    storybrain.storyChoice(1);
                  });
                },
                color: Colors.red,
                child: Text(
                    storybrain.getchoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storybrain.buttonVisibility(),
                child: FlatButton(
                  onPressed: (){
                  print('Button2 pressed');
                  setState(() {
                    storybrain.storyChoice(2);
                  });
                  },
                  color: Colors.blue,
                  child: Text(
                    storybrain.getchoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
