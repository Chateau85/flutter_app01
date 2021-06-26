import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Page1.dart';
import 'package:flutter_app/Page2.dart';
import 'package:flutter_app/Page3.dart';
import 'package:flutter_app/first_page.dart';
import 'package:flutter_app/second_page.dart';

import 'dart:math';

enum Gender { MAN, WOMAN }

final _valueList = ['첫 번째', '두 번째', '세 번째'];

final dummyItems = [
  'https://cdn.pixabay.com/photo/2018/11/12/18/44/thanksgiving-3811492_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/10/30/15/33/tajikistan-4589831_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/11/25/16/15/safari-4652364_1280.jpg',
];

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
        //primarySwatch: Colors.blue,
        primaryColor: Colors.white,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: HeroPage(),
      //home: AnimatedContainerPage(),
      //home: SilverPage(),
      //home: SilverListPage(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: FirstPage(), // 첫 페이지를 시작 페이지로 지정
      //home: FirstStatefulPage(), // 첫 페이지를 시작 페이지로 지정
      // routes: {
      //   // '/first': (context) => FirstPage(),
      //   // '/second': (context) => SecondPage(),
      //   '/first': (context) => FirstStatefulPage(),
      //   '/second': (context) => SecondStatefulPage(),
      // },

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; // 페이지 인덱스 0, 1, 2
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white, // 배경색을 흰색으로
        //title: Text('복잡한 UI', style: TextStyle(color: Colors.black)), // 글자색을 검은색으로
        centerTitle: true,
        title: Text('복잡한 UI'), // 글자색을 검은색으로
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            //icon: Icon(Icons.add, color: Colors.black), // 앱의 전체 테마를 수정했다면 작성하지 않아도 됨
            icon: Icon(Icons.add),
          ),
        ],
      ),
      // body: Center(
      //   child: Text(
      //     '$_index 페이지',
      //     style: TextStyle(fontSize: 40),
      //   ),
      // ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index; // 선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index, // 선택된 인덱스
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   final items = List.generate(100, (i) => i).toList();
//   var isChecked = false;
//
//   Gender _gender = Gender.MAN;
//
//   var _selectedValue = '첫 번째';
//
//   var _isOn = false;
//
//   DateTime _selectedDate;
//   String _selectedTime;
//
//   @override
//   Widget build(BuildContext context) {
//     // return DefaultTabController(
//     //   length: 3,
//     //   child: Scaffold(
//     //     appBar: AppBar(
//     //       //title: Text('제목'),
//     //       title: Text('tab'),
//     //       bottom: TabBar(tabs: <Widget>[
//     //         Tab(icon: Icon(Icons.tag_faces)),
//     //         Tab(text: '메뉴2'),
//     //         Tab(icon: Icon(Icons.info), text: '메뉴3'),
//     //       ]),
//     //     ),
//     // body: Text('여기에 예제 작성'),
//
//     // 4.2.1 Container
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.1 Container'),
//     //   ),
//     //   body: Container(
//     //     color: Colors.red,
//     //     width: 100,
//     //     height: 100,
//     //     padding: const EdgeInsets.all(8.0),
//     //     margin: const EdgeInsets.all(8.0),
//     //   ),
//     // );
//
//     // 4.2.2 Column
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.2 Column'),
//     //   ),
//     //   body: Column(
//     //     children: <Widget>[
//     //       Container(
//     //         color: Colors.red,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.green,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.blue,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 4.2.3 Row
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.3 Row'),
//     //   ),
//     //   body: Row(
//     //     mainAxisSize: MainAxisSize.max,
//     //     mainAxisAlignment: MainAxisAlignment.center,
//     //     children: <Widget>[
//     //       Container(
//     //         color: Colors.red,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.green,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.blue,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 4.2.4 Stack
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.4 Stack'),
//     //   ),
//     //   body: Stack(
//     //     children: <Widget>[
//     //       Container(
//     //         color: Colors.red,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.green,
//     //         width: 80,
//     //         height: 80,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.blue,
//     //         width: 60,
//     //         height: 60,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 4.2.5 SingleChildScrollView
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.5 SingleChildScrollView'),
//     //   ),
//     //   body: SingleChildScrollView(
//     //     child: ListBody(
//     //       children: items.map((i) => Text('$i')).toList(),
//     //     ),
//     //   ),
//     // );
//
//     // 4.2.6 ListView, ListTile
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.6 ListView, ListTile'),
//     //   ),
//     //   body: ListView(
//     //     scrollDirection: Axis.vertical,
//     //     children: <Widget>[
//     //       ListTile(
//     //         leading: Icon(Icons.home),
//     //         title: Text('Home'),
//     //         trailing: Icon(Icons.navigate_next),
//     //         onTap: () {},
//     //       ),
//     //       ListTile(
//     //         leading: Icon(Icons.event),
//     //         title: Text('Event'),
//     //         trailing: Icon(Icons.navigate_next),
//     //         onTap: () {},
//     //       ),
//     //       ListTile(
//     //         leading: Icon(Icons.camera),
//     //         title: Text('Camera'),
//     //         trailing: Icon(Icons.navigate_next),
//     //         onTap: () {},
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 4.2.7 GridView
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.7 GridView'),
//     //   ),
//     //   body: GridView.count(
//     //     crossAxisCount: 2,
//     //     children: <Widget>[
//     //       Container(
//     //         color: Colors.red,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.green,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       ),
//     //       Container(
//     //         color: Colors.blue,
//     //         width: 100,
//     //         height: 100,
//     //         padding: const EdgeInsets.all(8.0),
//     //         margin: const EdgeInsets.all(8.0),
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 4.2.8 PageView
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.8 PageView'),
//     //   ),
//     //   body: PageView(
//     //     children: <Widget>[
//     //       Container(
//     //         color: Colors.red,
//     //       ),
//     //       Container(
//     //         color: Colors.green,
//     //       ),
//     //       Container(
//     //         color: Colors.blue,
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 4.2.9 Appbar, TabBar, Tab, TabBarView
//     // return DefaultTabController(
//     //   length: 3,
//     //   child: Scaffold(
//     //     appBar: AppBar(
//     //       //title: Text('제목'),
//     //       title: Text('tab'),
//     //       bottom: TabBar(tabs: <Widget>[
//     //         Tab(icon: Icon(Icons.tag_faces)),
//     //         Tab(text: '메뉴2'),
//     //         Tab(icon: Icon(Icons.info), text: '메뉴3'),
//     //       ]),
//     //     ),
//     //     body: TabBarView(children: <Widget>[
//     //       Container(
//     //         color: Colors.yellow,
//     //       ),
//     //       Container(
//     //         color: Colors.orange,
//     //       ),
//     //       Container(
//     //         color: Colors.red,
//     //       )
//     //     ]),
//     //   ),
//     // );
//
//     // 4.2.10 BottomNavigationBar
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('제목'),
//     //     title: Text('4.2.10 BottomNavigationBar'),
//     //   ),
//     //   bottomNavigationBar: BottomNavigationBar(items: [
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.home),
//     //       title: Text('Home'),
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.person),
//     //       title: Text('Profile'),
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.notifications),
//     //       title: Text('Notification'),
//     //     )
//     //   ]),
//     // );
//
//     // 4.3.1 Center
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.3.1 Center'),
//     //   ),
//     //   body: Center(
//     //       child: Container(
//     //     color: Colors.red,
//     //     width: 100,
//     //     height: 100,
//     //   )),
//     // );
//
//     // 4.3.2 Padding
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.3.2 Padding'),
//     //   ),
//     //   body: Padding(
//     //     padding: const EdgeInsets.all(40.0),
//     //     child: Container(
//     //       color: Colors.red,
//     //     ),
//     //   ),
//     // );
//
//     // 4.3.3 Align
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.3.3 Align'),
//     //   ),
//     //   body: Align(
//     //     alignment: Alignment.bottomRight,
//     //     child: Container(
//     //       color: Colors.red,
//     //       width: 100,
//     //       height: 100,
//     //     ),
//     //   ),
//     // );
//
//     // 4.3.4 Expanded
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.3.4 Expanded'),
//     //   ),
//     //   body: Column(
//     //     children: <Widget>[
//     //       Expanded(
//     //         flex: 2,
//     //         child: Container(
//     //           color: Colors.red,
//     //         ),
//     //       ),
//     //       Expanded(
//     //         child: Container(
//     //           color: Colors.green,
//     //         ),
//     //       ),
//     //       Expanded(
//     //         child: Container(
//     //           color: Colors.blue,
//     //         ),
//     //       )
//     //     ],
//     //   ),
//     //);
//
//     // 4.3.5 SizedBox
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.3.5 SizedBox'),
//     //   ),
//     //   body: SizedBox(
//     //     width: 100,
//     //     height: 100,
//     //     child: Container(color: Colors.red),
//     //   ),
//     // );
//
//     // 4.3.6 Card
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.3.6 Card'),
//     //   ),
//     //   body: Center(
//     //     child: Card(
//     //       shape: RoundedRectangleBorder(
//     //         borderRadius: BorderRadius.circular(16.0),
//     //       ),
//     //       elevation: 4.0,
//     //       child: Container(
//     //         width: 200,
//     //         height: 200,
//     //       ),
//     //     ),
//     //   ),
//     // );
//
//     // 4.4.1 RaisedButton
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.4.1 RaisedButton'),
//     //   ),
//     //   body: Center(
//     //     // child: RaisedButton(
//     //     //   child: Text('RaisedButton'),
//     //     //   color: Colors.orange,
//     //     //   onPressed: () {},
//     //     // ),
//     //     child: ElevatedButton(
//     //       child: Text('RaisedButton'),
//     //       onPressed: () {},
//     //     ),
//     //   ),
//     // );
//
//     // 4.4.2 FlatButton
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.4.2 FlatButton'),
//     //   ),
//     //   body: Center(
//     //     // child: FlatButton(
//     //     //   child: Text('FlatButton'),
//     //     //   onPressed: () {},
//     //     // ),
//     //     child: TextButton(
//     //       child: Text('FlatButton'),
//     //       onPressed: () {},
//     //     ),
//     //   ),
//     // );
//
//     // 4.4.3 IconButton
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.4.3 IconButton'),
//     //   ),
//     //   body: Center(
//     //     // child: FlatButton(
//     //     //   child: Text('FlatButton'),
//     //     //   onPressed: () {},
//     //     // ),
//     //     child: IconButton(
//     //       icon: Icon(Icons.add),
//     //       color: Colors.red,
//     //       iconSize: 100.0,
//     //       onPressed: () {},
//     //     ),
//     //   ),
//     // );
//
//     // 4.4.4 FloatingActionButton
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.4.4 IconButton'),
//     //   ),
//     //   body: Center(
//     //     child: FloatingActionButton(
//     //       child: Icon(Icons.add),
//     //       onPressed: () {},
//     //     ),
//     //   ),
//     // );
//
//     // 4.5.1 Text
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.5.1 Text'),
//     //   ),
//     //   body: Center(
//     //     child: Text(
//     //       'Hello World!',
//     //       style: TextStyle(
//     //           fontSize: 40.0,
//     //           fontStyle: FontStyle.italic,
//     //           fontWeight: FontWeight.bold,
//     //           color: Colors.red,
//     //           letterSpacing: 4.0),
//     //     ),
//     //   ),
//     // );
//
//     // 4.5.2 Image
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.5.2 Image'),
//     //   ),
//     //   body: Center(
//     //     child: Image.network('http://bit.ly/2Pvz4t8'),
//     //   ),
//     // );
//
//     // 4.5.3 Icon
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.5.3 Icon'),
//     //   ),
//     //   body: Center(
//     //       child: Icon(
//     //     Icons.home,
//     //     color: Colors.red,
//     //     size: 60.0,
//     //   )),
//     // );
//
//     // 4.5.4 Progress
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.5.4 Progress'),
//     //   ),
//     //   body: Center(
//     //     //child: CircularProgressIndicator(),
//     //     child: LinearProgressIndicator(),
//     //   ),
//     // );
//
//     // 4.5.5 CircleAvatar
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('4.5.5 CircleAvatar'),
//     //   ),
//     //   body: Center(
//     //     //child: CircularProgressIndicator(),
//     //     child: CircleAvatar(
//     //       child: Icon(Icons.person),
//     //     ),
//     //   ),
//     // );
//
//     // 5.1.1 TextField
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.1.1 TextField'),
//     //   ),
//     // body: Center(
//     //   child: TextField(),
//     // ),
//     // body: Center(
//     //   child: TextField(
//     //     decoration: InputDecoration(
//     //       labelText: '여기에 입력하세요.',
//     //     ),
//     //   ),
//     // ),
//     // body: Center(
//     //   child: TextField(
//     //     decoration: InputDecoration(
//     //       border: OutlineInputBorder(),
//     //       labelText: '여기에 입력하세요.',
//     //     ),
//     //   ),
//     // ),
//     //);
//
//     // 5.1.2 CheckBox와 Switch
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.1.2 CheckBox와 Switch'),
//     //   ),
//     //   body: Center(
//     //     child: Column(
//     //       mainAxisSize: MainAxisSize.max,
//     //       mainAxisAlignment: MainAxisAlignment.center,
//     //       children: <Widget>[
//     //         Checkbox(
//     //             value: isChecked,
//     //             onChanged: (value) {
//     //               setState(() {
//     //                 isChecked = value; // 수정 environment: sdk: ">=2.7.0 <3.0.0"
//     //               });
//     //             }),
//     //         Switch(
//     //           value: isChecked,
//     //           onChanged: (value) {
//     //             setState(() {
//     //               isChecked = value;
//     //             });
//     //           },
//     //         ),
//     //       ],
//     //     ),
//     //   ),
//     // );
//
//     // 5.1.3 Radio와 RadioListTile
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     //title: Text('5.1.3 Radio와 RadioListTile'),
//     //     title: Text('Radio / RadioListTile'),
//     //   ),
//     //   body: Padding(
//     //     padding: const EdgeInsets.all(8.0),
//     //     child: Center(
//     //       child: Column(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: <Widget>[
//     //           ListTile(
//     //             title: Text('남자'),
//     //             leading: Radio(
//     //               value: Gender.MAN,
//     //               groupValue: _gender,
//     //               onChanged: (value) {
//     //                 setState(() {
//     //                   _gender = value;
//     //                 });
//     //               },
//     //             ),
//     //           ),
//     //           ListTile(
//     //             title: Text('여자'),
//     //             leading: Radio(
//     //               value: Gender.WOMAN,
//     //               groupValue: _gender,
//     //               onChanged: (value) {
//     //                 setState(() {
//     //                   _gender = value;
//     //                 });
//     //               },
//     //             ),
//     //           ),
//     //           SizedBox(
//     //             height: 40,
//     //           ),
//     //           RadioListTile(
//     //             title: Text('남자'),
//     //             value: Gender.MAN,
//     //             groupValue: _gender,
//     //             onChanged: (value) {
//     //               setState(() {
//     //                 _gender = value;
//     //               });
//     //             },
//     //           ),
//     //           RadioListTile(
//     //             title: Text('여자'),
//     //             value: Gender.WOMAN,
//     //             groupValue: _gender,
//     //             onChanged: (value) {
//     //               setState(() {
//     //                 _gender = value;
//     //               });
//     //             },
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //   ),
//     // );
//
//     // 5.1.4 DropDownButton
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.1.4 DropDownButton'),
//     //   ),
//     //   body: Center(
//     //     child: DropdownButton(
//     //       value: _selectedValue,
//     //       items: _valueList.map(
//     //         (value) {
//     //           return DropdownMenuItem(
//     //             value: value,
//     //             child: Text(value),
//     //           );
//     //         },
//     //       ).toList(),
//     //       onChanged: (value) {
//     //         setState(() {
//     //           _selectedValue = value;
//     //         });
//     //       },
//     //     ),
//     //   ),
//     // );
//
//     // 5.2.1 AlertDialog
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.2.1 AlertDialog'),
//     //   ),
//     //   body: ElevatedButton(
//     //     onPressed: () {
//     //       showDialog(
//     //         context: context,
//     //         barrierDismissible: false, // user must tap button!
//     //         builder: (BuildContext context) {
//     //           return AlertDialog(
//     //             title: Text('제목'),
//     //             content: SingleChildScrollView(
//     //               child: ListBody(
//     //                 children: <Widget>[
//     //                   Text('Alert Dialog 입니다'),
//     //                   Text('OK를 눌러 닫습니다'),
//     //                 ],
//     //               ),
//     //             ),
//     //             actions: <Widget>[
//     //               TextButton(
//     //                 child: Text('OK'),
//     //                 onPressed: () {
//     //                   Navigator.of(context).pop();
//     //                 },
//     //               ),
//     //               TextButton(
//     //                 child: Text('Cancel'),
//     //                 onPressed: () {
//     //                   Navigator.of(context).pop();
//     //                 },
//     //               ),
//     //             ],
//     //           );
//     //         },
//     //       );
//     //     },
//     //     child: Text('Alert Dialog'),
//     //   ),
//     // );
//
//     // 5.2.2 DatePicker
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.2.2 DatePicker'),
//     //   ),
//     //   body: Column(
//     //     mainAxisAlignment: MainAxisAlignment.center,
//     //     crossAxisAlignment: CrossAxisAlignment.center,
//     //     children: <Widget>[
//     //       ElevatedButton(
//     //         onPressed: () {
//     //           Future<DateTime> selectedDate = showDatePicker(
//     //             context: context,
//     //             initialDate: DateTime.now(),
//     //             firstDate: DateTime(2021),
//     //             lastDate: DateTime(2030),
//     //             builder: (BuildContext context, Widget child) {
//     //               return Theme(
//     //                 data: ThemeData.dark(),
//     //                 child: child,
//     //               );
//     //             },
//     //           );
//     //           // 여기서 사용자가 날짜를 선택할 때까지 코드가 블록됨
//     //
//     //           selectedDate.then((dateTime) {
//     //             setState(() {
//     //               _selectedDate = dateTime;
//     //             });
//     //           });
//     //         },
//     //         child: Text('DatePicker'),
//     //       ),
//     //       Text('$_selectedTime'),
//     //     ],
//     //   ),
//     // );
//
//     // 5.2.3 TimePicker
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.2.3 TimePicker'),
//     //   ),
//     //   body: Column(
//     //     children: <Widget>[
//     //       ElevatedButton(
//     //         onPressed: () {
//     //           Future<TimeOfDay> selectedTime = showTimePicker(
//     //             initialTime: TimeOfDay.now(),
//     //             context: context,
//     //           );
//     //
//     //           selectedTime.then((timeOfDay) {
//     //             setState(() {
//     //               _selectedTime = '${timeOfDay.hour}:${timeOfDay.minute}';
//     //             });
//     //           });
//     //         },
//     //         child: Text('Time Picker'),
//     //       ),
//     //       Text('$_selectedTime'),
//     //     ],
//     //   ),
//     // );
//
//     // 5.3.1 GestureDetector와 InkWell
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text('5.3.1 GestureDetector와 InkWell'),
//     //   ),
//     //   body: Column(
//     //     mainAxisAlignment: MainAxisAlignment.center,
//     //     children: <Widget>[
//     //       GestureDetector(
//     //         onTap: (){
//     //           print('GestureDetector 클릭!!');
//     //         },
//     //         child: Text('클릭'),
//     //       )
//     //     ],
//     //   ),
//     // );
//
//     // 5.5.1 쿠퍼티노 기본 UI
//     return Scaffold(
//       appBar: CupertinoNavigationBar(
//         middle: Text('4.10 쿠퍼티노 디자인'),
//       ),
//       body: Column(
//         children: <Widget>[
//           CupertinoSwitch(
//             value: _isOn,
//             onChanged: (bool value) {
//               setState(() {
//                 _isOn = value;
//               });
//             },
//           ),
//           CupertinoButton(
//             borderRadius: BorderRadius.circular(16.0),
//             color: Colors.orange,
//             child: Text('쿠퍼티노 AlertDialog'),
//             onPressed: () {
//               // 클릭 이벤트
//               _showCupertinoDialog();
//             },
//           ),
//           CupertinoButton(
//             child: Text('쿠퍼티노 Picker'),
//             onPressed: () {
//               // 클릭 이벤트
//               _showCupertinoPicker();
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   _showCupertinoDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => CupertinoAlertDialog(
//         title: Text('제목'),
//         content: Text('내용'),
//         actions: <Widget>[
//           CupertinoDialogAction(
//             child: Text('Cancel'),
//           ),
//           CupertinoDialogAction(
//             child: Text('Ok'),
//             onPressed: () {
//               Navigator.of(context).pop(); // 다이얼로그 닫기
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   _showCupertinoPicker() async {
//     // CupertinoPicker
//     // 0부터 9까지의 숫자 리스트 생성
//     final _items = List.generate(10, (i) => i);
//     var result = _items[0]; // 기본값 0
//
//     await showCupertinoModalPopup(
//       context: context,
//       builder: (context) => Container(
//         height: 200.0, // 피커의 높이는 200
//         child: CupertinoPicker(
//           children: _items.map((e) => Text('No. $e')).toList(),
//           // 0부터 9까지의 숫자 표시
//           itemExtent: 50.0,
//           // 항목 1개의 높이는 50
//           onSelectedItemChanged: (int value) {
//             result = _items[value];
//           },
//         ),
//       ),
//     );
//     print(result);
//   }
// }
//
// // 5.4.1 Hero
// // 첫 번째 페이지
// // class HeroPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('5.4.1 Hero'),
// //       ),
// //       body: Center(
// //         child: GestureDetector(
// //           onTap: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(builder: (context) => HeroDetailPage()),
// //             );
// //           },
// //           child: Hero(
// //             tag: 'images', // 여기서 작성한 태그와 두 번째 페이지의 태그가 동일해야 함
// //             child: Image.asset("images/sample.jpg"),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // 두 번째 페이지
// // class HeroDetailPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('5.4.1 Hero Detail'),
// //       ),
// //       body: Hero(
// //         tag: 'images', // 여기서 작성한 태그와 첫 번째 페이지의 태그가 동일해야 함
// //         child: new Image.asset('images/sample.jpg'),
// //       ),
// //     );
// //   }
// // }
//
// // 5.4.2 AnimatedContainer
// // class AnimatedContainerPage extends StatefulWidget {
// //   @override
// //   _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
// // }
// //
// // class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
// //   var _size = 100.0;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('5.4.2 AnimatedContainer'),
// //       ),
// //       body: Center(
// //         child: GestureDetector(
// //           onTap: () {
// //             final random = Random();
// //             setState(() {
// //               _size = random.nextInt(200).toDouble() + 100;
// //             });
// //           },
// //           child: AnimatedContainer(
// //             duration: Duration(seconds: 1),
// //             width: _size,
// //             height: _size,
// //             child: Image.asset('images/sample.jpg'),
// //             curve: Curves.fastOutSlowIn,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// // 5.4.3 SilverAppBar와 SilverFillRemaining
// // class SilverPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CustomScrollView(
// //         slivers: <Widget>[
// //           SliverAppBar(
// //             // 헤더 영역
// //             pinned: true, // 축소 시 상단에 AppBar가 고정되는지 설정
// //             expandedHeight: 100.0, // 헤더의 최대 높이
// //             flexibleSpace: FlexibleSpaceBar(
// //               // 늘어나는 영역의 UI 정의
// //               title: Text('Silver'),
// //               background: Image.asset(
// //                 'images/sample.jpg',
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           SliverFillRemaining(
// //             // 내용 영역
// //             child: Center(
// //               child: Text('center'),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// // 5.4.4 SilverListPage와 SilverList
// // class SilverListPage extends StatelessWidget {
// //   final _items = List.generate(
// //     50,
// //     (i) => ListTile(
// //       title: Text('No. $i'),
// //     ),
// //   );
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CustomScrollView(
// //         slivers: <Widget>[
// //           SliverAppBar(
// //             pinned: true,
// //             expandedHeight: 180.0,
// //             flexibleSpace: FlexibleSpaceBar(
// //               title: Text('Sliver'),
// //               background: Image.asset(
// //                 'images/sample.jpg',
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           SliverList(
// //             delegate: SliverChildListDelegate(_items),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
//
// // // 첫 페이지
// // class FirstPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('First'),
// //       ),
// //       body: RaisedButton(
// //         child: Text('다음 페이지로'),
// //         onPressed: () {},
// //       ),
// //     );
// //   }
// // }
//
// // // 두 번째 페이지
// // class SecondPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Second'),
// //       ),
// //       body: RaisedButton(
// //         child: Text('이전 페이지로'),
// //         onPressed: () {},
// //       ),
// //     );
// //   }
// // }
