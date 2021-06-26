import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Ch.7/Person.dart';

// 두 번째 페이지
class SecondStatefulPage extends StatefulWidget {
  final Person person;

  SecondStatefulPage({Key key, @required this.person}) : super(key: key);

  @override
  _SecondStatefulPage createState() => _SecondStatefulPage();
}

class _SecondStatefulPage extends State<SecondStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('SecondPage initState()');
  }

  @override
  void dispose() {
    super.dispose();
    print('SecondPage dispose()');
  }
}

// class SecondPage extends StatelessWidget {
//   final Person person;
//
//   SecondPage({@required this.person});
//
//   @override
//   Widget build(BuildContext context) {
//     print('SecondPage build()');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second'),
//       ),
//       body: ElevatedButton(
//         child: Text('이전 페이지로'),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }
