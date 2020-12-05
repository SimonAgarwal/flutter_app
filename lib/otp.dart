import 'package:flutter/material.dart';
import './networkHandler.dart';

class Otp extends StatefulWidget {
  const Otp({
    Key key,
  }) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  NetworkHandler networkHandler = NetworkHandler();
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.purple[800]),
          backgroundColor: Colors.grey[100],
          elevation: 0.0,
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset('assets/OTP-1.png', fit: BoxFit.fill)),
            ),
            Text('Enter 4 digit code sent to your phone number',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: Form(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    SizedBox(
                        width: 0.15 * MediaQuery.of(context).size.width,
                        child: TextFormField(
                          autofocus: true,
                          style: TextStyle(fontSize: 24),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: (15 / 375.0) *
                                    MediaQuery.of(context).size.width),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            nextField(value, pin2FocusNode);
                          },
                        )),
                    SizedBox(
                        width: 0.15 * MediaQuery.of(context).size.width,
                        child: TextFormField(
                          focusNode: pin2FocusNode,
                          autofocus: true,
                          style: TextStyle(fontSize: 24),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: (15 / 375.0) *
                                      MediaQuery.of(context).size.width),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              )),
                          onChanged: (value) {
                            nextField(value, pin3FocusNode);
                          },
                        )),
                    SizedBox(
                        width: 0.15 * MediaQuery.of(context).size.width,
                        child: TextFormField(
                          focusNode: pin3FocusNode,
                          autofocus: true,
                          style: TextStyle(fontSize: 24),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: (15 / 375.0) *
                                      MediaQuery.of(context).size.width),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              )),
                          onChanged: (value) {
                            nextField(value, pin4FocusNode);
                          },
                        )),
                    SizedBox(
                        width: 0.15 * MediaQuery.of(context).size.width,
                        child: TextFormField(
                          autofocus: true,
                          focusNode: pin4FocusNode,
                          style: TextStyle(fontSize: 24),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: (15 / 375.0) *
                                      MediaQuery.of(context).size.width),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black),
                              )),
                          onChanged: (value) {
                            if (value.length == 1) {
                              pin4FocusNode.unfocus();
                              // Then you need to check is the code is correct or not
                            }
                          },
                        ))
                  ])),
            )

            /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Container(
                  width:70.0,
                  height:60,

                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(14.0)
                  )
                ),
                Container(
                    width:70.0,
                    height:60,
                    decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(14.0)
                    )
                ),
                Container(
                    width:70.0,
                    height:60,
                    decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(14.0)
                    )
                ),
                Container(
                    width:70.0,
                    height:60,
                    decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(14.0)
                    )
                )
              ]
            ),*/
            ,
            SizedBox(height: 60.0),
            Container(
              width: MediaQuery.of(context).size.width * 0.97,
              height: 47,
              child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/otpVerify');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.purple[800],
                  child: Text('CONFIRM',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold))),
            )
          ],
        )));
  }
}
