import 'package:flutter/material.dart';
import 'package:dictate_app/index_dashboard/reusable_card.dart';
import 'package:dictate_app/vocabCoach/voiceToSpeech.dart';
import 'package:wiredash/wiredash.dart';

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

// class Dashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF0A0D23),
//       appBar: AppBar(
//         title: Text('iNdulge',
//         style: TextStyle(
//           fontSize: 18.0,
//           color: Color(0xFF21e6c1),
//           fontWeight: FontWeight.w900,
//         ),),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//
//           Expanded(
//             child: ReusableCard(
//               cardColour: Color(0xFF1D1E33),
//               cardChild: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     'HEIGHT',
//                     style: kLabelTextStyle,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.baseline,
//                     textBaseline: TextBaseline.alphabetic,
//                     children: <Widget>[
//                       Text(
//                         "Hello",
//                       ),
//                       Text(
//                         'cm',
//                         style: kLabelTextStyle,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Expanded(
//                   child: ReusableCard(
//                       onPress: () {
//                         Navigator.pushNamed(context, '/indulge');
//                       },
//                       cardColour: Color(0xFF1D1E33),
//                       cardChild: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           children: <Widget>[
//                             Expanded(
//                                 child: Image.asset(
//                                   "images/indulge.png",
//                                   height: 50.0,
//                                   width: 400.0,
//                                 )),
//                             // SizedBox(
//                             //   height: 10.0,
//                             // ),
//                             Text(
//                               "AR Classroom",
//                               style: TextStyle(
//                                 fontSize: 18.0,
//                                 color: Color(0xFF8D8E98),
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                           ],
//                         ),
//                       )),
//                 ),
//                 Expanded(
//                   child: ReusableCard(
//                       onPress: () {
//                         Navigator.pushNamed(context, '/vocab');
//                       },
//                       cardColour: Color(0xFF1D1E33),
//                       cardChild: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           children: <Widget>[
//                             Expanded(
//                               child: Image.asset(
//                                 "images/character 17.png",
//                                 height: 150.0,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 20.0,
//                             ),
//                             Text(
//                               "Vocab Coach",
//                               style: TextStyle(
//                                 fontSize: 18.0,
//                                 color: Color(0xFF8D8E98),
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                           ],
//                         ),
//                       )),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ReusableCard(
//               cardColour: Color(0xFF1D1E33),
//               cardChild: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     'HEIGHT',
//                     style: kLabelTextStyle,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.baseline,
//                     textBaseline: TextBaseline.alphabetic,
//                     children: <Widget>[
//                       Text(
//                         "Hello",
//                       ),
//                       Text(
//                         'cm',
//                         style: kLabelTextStyle,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class wr extends StatefulWidget {
  @override
  _wrState createState() => _wrState();
}

class _wrState extends State<wr> {

  //wiredash method
  void _incre(){
    Wiredash.of(context).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0D23),
      appBar: AppBar(
        title: Text('iNdulge',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF21e6c1),
            fontWeight: FontWeight.w900,
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child:  ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/indulge');
                  },
                  cardColour: Color(0xFF1D1E33),
                  cardChild: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Image.asset(
                              "images/indulge.png",
                              height: 50.0,
                              width: 400.0,
                            )),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        Text(
                          "AR Classroom",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/video');
                  },
                  cardColour: Color(0xFF1D1E33),
                  cardChild: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Image.asset(
                              "images/video.png",
                              height: 50.0,
                              width: 400.0,
                            ),
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        Text(
                          "Live Classroom(Video call)",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ReusableCard(
                        onPress: () {
                          Navigator.pushNamed(context, '/vocab');
                        },
                        cardColour: Color(0xFF1D1E33),
                        cardChild: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Image.asset(
                                  "images/character 17.png",
                                  height: 150.0,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "Vocab Coach",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xFF8D8E98),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                         _incre();
                        },
                        cardColour: Color(0xFF1D1E33),
                        cardChild: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex:1,
                                  child: Image.asset(
                                    "assets/call-center-agent.png",
                                    height: 50.0,
                                    width: 400.0,
                                  )),
                              // SizedBox(
                              //   height: 10.0,
                              // ),
                              Text(
                                "Assist",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0xFF8D8E98),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
