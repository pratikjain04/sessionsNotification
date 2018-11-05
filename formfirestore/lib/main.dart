import 'package:flutter/material.dart';
import 'sessionsForm.dart';

void main() => runApp(new MaterialApp(
  home: NotifySessions(),
  debugShowCheckedModeBanner: false,
  routes: <String, WidgetBuilder> {
    '/SessionsForm' : (BuildContext context) => new SessionsForm()
  },
));

class NotifySessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double uniWidth = MediaQuery.of(context).size.width;
    double uniHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('22kStreet'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: uniHeight / 50)),
            Container(
              height: uniHeight / 7,
              child: GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 2.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: uniWidth / 10)),
                      Icon(Icons.notifications),
                      Padding(padding: EdgeInsets.only(left: uniWidth / 4)),
                      Text(
                        'Notifications',
                        style: TextStyle(
                            color: Colors.black, fontSize: uniWidth / 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: uniHeight / 7,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/SessionsForm');
                },
                child: Card(
                  elevation: 2.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: uniWidth / 10)),
                      Icon(Icons.account_circle),
                      Padding(padding: EdgeInsets.only(left: uniWidth / 4)),
                      Text(
                        'Sessions',
                        style: TextStyle(
                            color: Colors.black, fontSize: uniWidth / 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}