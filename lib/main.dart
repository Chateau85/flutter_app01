import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final items = List.generate(100, (i) => i).toList();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       //title: Text('제목'),
    //       title: Text('tab'),
    //       bottom: TabBar(tabs: <Widget>[
    //         Tab(icon: Icon(Icons.tag_faces)),
    //         Tab(text: '메뉴2'),
    //         Tab(icon: Icon(Icons.info), text: '메뉴3'),
    //       ]),
    //     ),
    // body: Text('여기에 예제 작성'),

    // 4.2.1 Container
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.1 Container'),
    //   ),
    //   body: Container(
    //     color: Colors.red,
    //     width: 100,
    //     height: 100,
    //     padding: const EdgeInsets.all(8.0),
    //     margin: const EdgeInsets.all(8.0),
    //   ),
    // );

    // 4.2.2 Column
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.2 Column'),
    //   ),
    //   body: Column(
    //     children: <Widget>[
    //       Container(
    //         color: Colors.red,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.green,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       )
    //     ],
    //   ),
    // );

    // 4.2.3 Row
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.3 Row'),
    //   ),
    //   body: Row(
    //     mainAxisSize: MainAxisSize.max,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       Container(
    //         color: Colors.red,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.green,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       )
    //     ],
    //   ),
    // );

    // 4.2.4 Stack
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.4 Stack'),
    //   ),
    //   body: Stack(
    //     children: <Widget>[
    //       Container(
    //         color: Colors.red,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.green,
    //         width: 80,
    //         height: 80,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         width: 60,
    //         height: 60,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       )
    //     ],
    //   ),
    // );

    // 4.2.5 SingleChildScrollView
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.5 SingleChildScrollView'),
    //   ),
    //   body: SingleChildScrollView(
    //     child: ListBody(
    //       children: items.map((i) => Text('$i')).toList(),
    //     ),
    //   ),
    // );

    // 4.2.6 ListView, ListTile
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.6 ListView, ListTile'),
    //   ),
    //   body: ListView(
    //     scrollDirection: Axis.vertical,
    //     children: <Widget>[
    //       ListTile(
    //         leading: Icon(Icons.home),
    //         title: Text('Home'),
    //         trailing: Icon(Icons.navigate_next),
    //         onTap: () {},
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.event),
    //         title: Text('Event'),
    //         trailing: Icon(Icons.navigate_next),
    //         onTap: () {},
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.camera),
    //         title: Text('Camera'),
    //         trailing: Icon(Icons.navigate_next),
    //         onTap: () {},
    //       )
    //     ],
    //   ),
    // );

    // 4.2.7 GridView
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.7 GridView'),
    //   ),
    //   body: GridView.count(
    //     crossAxisCount: 2,
    //     children: <Widget>[
    //       Container(
    //         color: Colors.red,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.green,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         width: 100,
    //         height: 100,
    //         padding: const EdgeInsets.all(8.0),
    //         margin: const EdgeInsets.all(8.0),
    //       )
    //     ],
    //   ),
    // );

    // 4.2.8 PageView
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.8 PageView'),
    //   ),
    //   body: PageView(
    //     children: <Widget>[
    //       Container(
    //         color: Colors.red,
    //       ),
    //       Container(
    //         color: Colors.green,
    //       ),
    //       Container(
    //         color: Colors.blue,
    //       )
    //     ],
    //   ),
    // );

    // 4.2.9 Appbar, TabBar, Tab, TabBarView
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       //title: Text('제목'),
    //       title: Text('tab'),
    //       bottom: TabBar(tabs: <Widget>[
    //         Tab(icon: Icon(Icons.tag_faces)),
    //         Tab(text: '메뉴2'),
    //         Tab(icon: Icon(Icons.info), text: '메뉴3'),
    //       ]),
    //     ),
    //     body: TabBarView(children: <Widget>[
    //       Container(
    //         color: Colors.yellow,
    //       ),
    //       Container(
    //         color: Colors.orange,
    //       ),
    //       Container(
    //         color: Colors.red,
    //       )
    //     ]),
    //   ),
    // );

    // 4.2.10 BottomNavigationBar
    // return Scaffold(
    //   appBar: AppBar(
    //     //title: Text('제목'),
    //     title: Text('4.2.10 BottomNavigationBar'),
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(items: [
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home),
    //       title: Text('Home'),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.person),
    //       title: Text('Profile'),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.notifications),
    //       title: Text('Notification'),
    //     )
    //   ]),
    // );

    // 4.3.1 Center
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.3.1 Center'),
    //   ),
    //   body: Center(
    //       child: Container(
    //     color: Colors.red,
    //     width: 100,
    //     height: 100,
    //   )),
    // );

    // 4.3.2 Padding
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.3.2 Padding'),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(40.0),
    //     child: Container(
    //       color: Colors.red,
    //     ),
    //   ),
    // );

    // 4.3.3 Align
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.3.3 Align'),
    //   ),
    //   body: Align(
    //     alignment: Alignment.bottomRight,
    //     child: Container(
    //       color: Colors.red,
    //       width: 100,
    //       height: 100,
    //     ),
    //   ),
    // );

    // 4.3.4 Expanded
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.3.4 Expanded'),
    //   ),
    //   body: Column(
    //     children: <Widget>[
    //       Expanded(
    //         flex: 2,
    //         child: Container(
    //           color: Colors.red,
    //         ),
    //       ),
    //       Expanded(
    //         child: Container(
    //           color: Colors.green,
    //         ),
    //       ),
    //       Expanded(
    //         child: Container(
    //           color: Colors.blue,
    //         ),
    //       )
    //     ],
    //   ),
    //);

    // 4.3.5 SizedBox
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.3.5 SizedBox'),
    //   ),
    //   body: SizedBox(
    //     width: 100,
    //     height: 100,
    //     child: Container(color: Colors.red),
    //   ),
    // );

    // 4.3.6 Card
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.3.6 Card'),
    //   ),
    //   body: Center(
    //     child: Card(
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(16.0),
    //       ),
    //       elevation: 4.0,
    //       child: Container(
    //         width: 200,
    //         height: 200,
    //       ),
    //     ),
    //   ),
    // );

    // 4.4.1 RaisedButton
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.4.1 RaisedButton'),
    //   ),
    //   body: Center(
    //     // child: RaisedButton(
    //     //   child: Text('RaisedButton'),
    //     //   color: Colors.orange,
    //     //   onPressed: () {},
    //     // ),
    //     child: ElevatedButton(
    //       child: Text('RaisedButton'),
    //       onPressed: () {},
    //     ),
    //   ),
    // );

    // 4.4.2 FlatButton
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.4.2 FlatButton'),
    //   ),
    //   body: Center(
    //     // child: FlatButton(
    //     //   child: Text('FlatButton'),
    //     //   onPressed: () {},
    //     // ),
    //     child: TextButton(
    //       child: Text('FlatButton'),
    //       onPressed: () {},
    //     ),
    //   ),
    // );

    // 4.4.3 IconButton
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.4.3 IconButton'),
    //   ),
    //   body: Center(
    //     // child: FlatButton(
    //     //   child: Text('FlatButton'),
    //     //   onPressed: () {},
    //     // ),
    //     child: IconButton(
    //       icon: Icon(Icons.add),
    //       color: Colors.red,
    //       iconSize: 100.0,
    //       onPressed: () {},
    //     ),
    //   ),
    // );

    // 4.4.4 FloatingActionButton
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.4.4 IconButton'),
    //   ),
    //   body: Center(
    //     child: FloatingActionButton(
    //       child: Icon(Icons.add),
    //       onPressed: () {},
    //     ),
    //   ),
    // );

    // 4.5.1 Text
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.5.1 Text'),
    //   ),
    //   body: Center(
    //     child: Text(
    //       'Hello World!',
    //       style: TextStyle(
    //           fontSize: 40.0,
    //           fontStyle: FontStyle.italic,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.red,
    //           letterSpacing: 4.0),
    //     ),
    //   ),
    // );

    // 4.5.2 Image
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.5.2 Image'),
    //   ),
    //   body: Center(
    //     child: Image.network('http://bit.ly/2Pvz4t8'),
    //   ),
    // );

    // 4.5.3 Icon
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.5.3 Icon'),
    //   ),
    //   body: Center(
    //       child: Icon(
    //     Icons.home,
    //     color: Colors.red,
    //     size: 60.0,
    //   )),
    // );

    // 4.5.4 Progress
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('4.5.4 Progress'),
    //   ),
    //   body: Center(
    //     //child: CircularProgressIndicator(),
    //     child: LinearProgressIndicator(),
    //   ),
    // );

    // 4.5.5 CircleAvatar
    return Scaffold(
      appBar: AppBar(
        title: Text('4.5.5 CircleAvatar'),
      ),
      body: Center(
        //child: CircularProgressIndicator(),
        child: CircleAvatar(
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}
