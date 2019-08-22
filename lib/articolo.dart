import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new ListPage(),
    );

  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,

    );
  }
}

final topAppBar = AppBar(
  elevation: 0.1,
  backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
  //title: Text(widget.title),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.list),
      onPressed: () {},
    )
  ],
);

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return makeCard;
    },
  ),
);
final makeCard = Card(
  elevation: 8.0,
  margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
  child: Container(
    decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
    child: makeListTile,
  ),
);

final makeListTile = ListTile(
    //contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
   // leading: Container(
      // padding: EdgeInsets.only(right: 12.0),
        //decoration: new BoxDecoration(
            //border: new Border(
                //right: new BorderSide(width: 1.0, color: Colors.white24))),
        //child: Icon(Icons.autorenew, color: Colors.white),
        /*child: Column(children: <Widget>[Text('10', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:30)),
          Text('MAR', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:15))])*/
    //),
    title: Text(
      "Inserisci Titolo",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Row(
      children: <Widget>[
        //Icon(Icons.linear_scale, color: Colors.yellowAccent),
        Text(" Inserisci sottotitolo \n inserisci sottotitolo 2", style: TextStyle(color: Colors.white , fontSize: 20)
        ),
      ],
    ),
    trailing:
    Icon(Icons.home, color: Colors.white, size: 30.0));

final makeBottom = Container(
  height: 55.0,
  child: BottomAppBar(
    color: Color.fromRGBO(58, 66, 86, 1.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.blur_on, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.hotel, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.account_box, color: Colors.white),
          onPressed: () {},
        )
      ],
    ),
  ),
);