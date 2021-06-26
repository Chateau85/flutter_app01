import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Ch.7/Person.dart';
import 'package:flutter_app/Ch.7/second_page.dart';

// 첫 페이지
class FirstStatefulPage extends StatefulWidget {
  @override
  _FirstStatefulPage createState() => _FirstStatefulPage();
}

class _FirstStatefulPage extends State<FirstStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final person = Person('홍길동', 20);
          // final result = await Navigator.push(
          //   // SecondPage로 화면 이동 코드
          //   context,
          //   MaterialPageRoute(builder: (context) => SecondPage(person: person)),
          // );
          //final result = await Navigator.pushNamed(context, '/second');
          //print(result);

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondStatefulPage(person: person)),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('FirstPage initState()');
  }

  @override
  void dispose() {
    super.dispose();
    print('FirstPage dispose()');
  }
}

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print('FirstPage build()');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First'),
//       ),
//       body: ElevatedButton(
//         child: Text('다음 페이지로'),
//         onPressed: () async {
//           final person = Person('홍길동', 20);
//           // final result = await Navigator.push(
//           //   // SecondPage로 화면 이동 코드
//           //   context,
//           //   MaterialPageRoute(builder: (context) => SecondPage(person: person)),
//           // );
//           final result = await Navigator.pushNamed(context, '/second');
//
//           print(result);
//         },
//       ),
//     );
//   }
// }
