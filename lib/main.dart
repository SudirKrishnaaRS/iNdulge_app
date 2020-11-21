import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';
import 'vocabCoach/voiceToSpeech.dart';
import 'indulge/keys.dart';
import 'indulge/home_page.dart';
import 'index_dashboard/dashboard.dart';
import 'videoCall/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Wiredash(
      navigatorKey: _navigatorKey,
      projectId: projectId,
      secret: secretKey,
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'iNdulge',
        theme: ThemeData(
          //primarySwatch: Colors.red,
          primaryColor: Color(0xFF0A0D23),
          //scaffoldBackgroundColor: Color(0xFF0A0D23),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => wr(),//Dashboard(),
          '/vocab': (context) => SpeechScreen(),
          '/indulge':(context)=> HomePage(),
          '/video': (context)=>IndexPage(),
        },
      ),
    );
  }
}
//
// class SpeechScreen extends StatefulWidget {
//   @override
//   _SpeechScreenState createState() => _SpeechScreenState();
// }
//
// class _SpeechScreenState extends State<SpeechScreen> {
//
//   final Map<String, HighlightedWord> _highlights = {
//     'flutter': HighlightedWord(
//       onTap: () => print('flutter'),
//       textStyle: const TextStyle(
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'voice': HighlightedWord(
//       onTap: () => print('voice'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'subscribe': HighlightedWord(
//       onTap: () => print('subscribe'),
//       textStyle: const TextStyle(
//         color: Colors.red,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'like': HighlightedWord(
//       onTap: () => print('like'),
//       textStyle: const TextStyle(
//         color: Colors.blueAccent,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'comment': HighlightedWord(
//       onTap: () => print('comment'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   };
//
//   stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _text = "Press the button and start speaking";
//   double _confidence = 1.0;
//
//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Confidence: ${(_confidence * 100.0).toStringAsFixed(1)}"),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: AvatarGlow(
//         animate: _isListening,
//         glowColor: Theme.of(context).primaryColor,
//         endRadius: 75.0,
//         duration:Duration(milliseconds: 2000),
//         repeatPauseDuration: const Duration(milliseconds: 100),
//         repeat: true,
//         child: FloatingActionButton(
//           onPressed: _listen,
//           child: Icon(_isListening ? Icons.mic : Icons.mic_none),
//         ),
//       ),
//       body: SingleChildScrollView(
//         reverse: true,
//         child:Container(
//           padding:  EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
//           child:  TextHighlight(
//             text: _text,
//             words: _highlights,
//             textStyle:TextStyle(
//               fontSize: 32.0,
//               color: Colors.black,
//               fontWeight: FontWeight.w400,
//             ) ,
//           ),
//         ),
//       ),
//     );
//   }
//   void _listen() async {
//     if (!_isListening) {
//       bool available = await _speech.initialize(
//         onStatus: (val) => print('onStatus: $val'),
//         onError: (val) => print('onError: $val'),
//       );
//       if (available) {
//         setState(() => _isListening = true);
//         _speech.listen(
//           onResult: (val) => setState(() {
//             _text = val.recognizedWords;
//             if (val.hasConfidenceRating && val.confidence > 0) {
//               _confidence = val.confidence;
//             }
//           }),
//         );
//       }
//     } else {
//       setState(() => _isListening = false);
//       _speech.stop();
//     }
//   }
// }
