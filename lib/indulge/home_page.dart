import 'package:dictate_app/indulge/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'constants.dart';
import 'data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wiredash/wiredash.dart';
import 'package:echoar_package/echoar_package.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _launchURL() async {
    const url = 'https://go.echoar.xyz/1FQ1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _incre(){
    Wiredash.of(context).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent,Colors.deepOrangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            stops: [0.3, 0.7],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'iNdulge',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 55,
                          color: Colors.black45,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'Ch 1: Solar System',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        DropdownMenuItem(
                          child: Text(
                            ' Ch 2: Nutrition In Plants',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Colors.tealAccent,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            ' Ch 3: Forests-Our Lifeline',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Colors.tealAccent,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            ' Ch 4: Soil',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Colors.tealAccent,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            ' Ch 5: Motion and Time',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Colors.tealAccent,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.keyboard_arrow_down),
                      ),
                      underline: SizedBox(
                        height: 2.0,
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder:  DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              planetInfo: planets[index],
                            ),
                          ),
                        );
                      },
                      child:
                      Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 140.0,
                              ),
                              Card(
                                color: Colors.white,
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 40,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Solar System',
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'Know more',
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 18,
                                                  color: secondaryTextColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: secondaryTextColor,
                                              ),

                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          FlatButton(
                                            onPressed: _launchURL,
                                            child: Text('👀 in AR',
                                              style: TextStyle(
                                                fontSize: 20.0,
                                              ),),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: planets[index].position,
                            child: Image.asset(planets[index].iconImage),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 60,
                            child: Text(
                              planets[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: EdgeInsets.all(15),
      //   decoration: BoxDecoration(
      //     color: Colors.redAccent,
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(16.0),
      //       topRight: Radius.circular(16.0),
      //     ),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       IconButton(
      //         icon: Icon(Icons.menu),
      //         onPressed: () {
      //
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.video_call),
      //         onPressed: () {
      //
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.perm_identity),
      //         onPressed: () {
      //
      //         },
      //       ),
      //       // IconButton(
      //       //     icon: Image.asset('assets/search_icon.png'), onPressed: () {}),
      //       // IconButton(
      //       //     icon: Image.asset('assets/profile_icon.png'), onPressed: () {}),
      //     ],
      //   ),
      // ),
    );
  }
}
