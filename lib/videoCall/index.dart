import 'dart:async';
//import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
//import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wiredash/wiredash.dart';

import 'package:dictate_app/videoCall/call.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IndexState();
}

class IndexState extends State<IndexPage> {
  /// create a channelController to retrieve text value
  final _channelController = TextEditingController();

  /// if channel textField is validated to have error
  bool _validateError = false;

  ClientRole _role = ClientRole.Broadcaster;

  @override
  void dispose() {
    // dispose input controller
    _channelController.dispose();
    super.dispose();
  }

  void _incre(){
    Wiredash.of(context).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      floatingActionButton: SafeArea(
        child: FloatingActionButton.extended(
          onPressed: _incre,
          label: Text('Assist',style: TextStyle(fontSize: 14.0,),),
          icon: Image.asset("assets/call-center-agent.png", height: 35.0,
            width: 50.0,),
          //icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.redAccent,
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            'iNdulge Connect-Video Meet ⚡',
            style: TextStyle(
              color: Colors.white//Color(0xFF21e6c1),      // ! enter hex code
            ),
          ),
        ),
        backgroundColor:Colors.deepOrangeAccent,//Color(0xFF1D3E5B) ,  // ! enter hex code     0xFF1D1E33
      ),
      body:
      Container(
       decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,  //specifies where to begin
             end: Alignment.bottomCenter, //specifies where to end
             stops: [0.1,1], //stops specifies how much the colors     must be displayed i.e)their proportion
             // if 4 colors are specified below   then values is must
             colors:[Colors.deepOrangeAccent,Colors.red], // you can specify any number of colors here to display
           ),
       ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Image(
                image: AssetImage('images/video.png'),
                height: 150.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: TextField(
                      controller: _channelController,
                      decoration: InputDecoration(
                        errorText:
                        _validateError ? 'Channel name is mandatory' : null,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        hintText: 'Class Meeting code',     //enter font
                      ),
                    ))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  title: Text("Broadcaster/Host",style: TextStyle(color: Colors.white),),
                  leading: Radio(
                    value: ClientRole.Broadcaster,
                    groupValue: _role,
                    onChanged: (ClientRole value) {
                      setState(() {
                        _role = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("Audience",
                  style: TextStyle(color: Colors.white),), //// ! enter hex code & font
                  leading: Radio(
                    value: ClientRole.Audience,
                    groupValue: _role,
                    onChanged: (ClientRole value) {
                      setState(() {
                        _role = value;
                      });
                    },
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 20.0,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0) ,
                  child: RaisedButton(
                    onPressed: onJoin,
                    child: Text('Join Meeting'),   // ! enter hex code & font
                    color: Colors.redAccent,//Color(0xFF43dde6),          // ! enter hex code
                    textColor: Colors.white,      // ! enter hex code    0xFFEB1555
                  ),
                )
              ],
            ),
            // Hyperlink('https://guimgonzalez.business/', 'Awesome website!'),
            // Row(
            //   children: <Widget>[
            //     Expanded(
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(50.0) ,
            //         child: RaisedButton(
            //           onPressed:showimg,
            //           child: Text('Experiance in AR'),   // ! enter hex code & font
            //           color: Color(0xFF43dde6),          // ! enter hex code
            //           textColor: Color(0xFF364f6b),      // ! enter hex code    0xFFEB1555
            //         ),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
  void aler()
  {
    AlertDialog(
      title: Text("Toady's Lesson !") ,
      content: Image.asset('images/logo.png'),
//        actions: [
//          FlatButton("Back"),
//        ],
      elevation: 30.0,
      backgroundColor: Color(0xFF364f6b),
    );
  }

  void showimg(){
    setState(() {
      print("alert");
      aler;
    });
  }

  Future<void> onJoin() async {
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_channelController.text.isNotEmpty) {
      await _handleCameraAndMic();
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(
            channelName: _channelController.text,
            role: _role,
          ),
        ),
      );
    }
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}
