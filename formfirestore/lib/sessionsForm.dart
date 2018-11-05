import 'package:flutter/material.dart';

class SessionsForm extends StatefulWidget {
  @override
  _SessionsFormState createState() => _SessionsFormState();
}

class _SessionsFormState extends State<SessionsForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double uniWidth = MediaQuery.of(context).size.width;
    double uniHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('New Session'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: uniHeight / 10)),
            Padding(
              padding: EdgeInsets.only(top: 0.0, left: uniWidth/25, right: uniWidth/25),
              child: Container(
                height: uniHeight / 1.5,
                width: uniWidth/1.03,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  elevation: 12.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          color: Colors.blue,
                        ),
                        height: uniHeight / 10,
                        child: Center(
                            child: Text('Register Session',
                                style: TextStyle(color: Colors.white))),
                      ),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            ),
                            color: Colors.orangeAccent[200].withOpacity(0.7),
                          ),
                          height: uniHeight/1.1,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}