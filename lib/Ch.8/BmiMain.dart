import 'package:flutter/material.dart';
import 'package:flutter_app/Ch.8/BmiResult.dart';

// 첫 번째 페이지(StatefulWidget)
class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  final _formKey = GlobalKey<FormState>(); // 폼의 상태를 얻기 위한 키

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // 폼
          key: _formKey, // 키 할당
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  // 외곽선이 있고 힌트로 '키'를 표시
                  border: OutlineInputBorder(),
                  hintText: '키',
                ),
                controller: _heightController,
                keyboardType: TextInputType.number, // 숫자만 입력할 수 있음
                validator: (value) {
                  if (value.trim().isEmpty) {
                    // 입력한 값의 앞뒤 공백을 제거한 것이 비었다면 에러 메시지 표시
                    return '키를 입력하세요';
                  }
                  return null; // null을 반환하면 에러가 없는 것임
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '몸무게',
                ),
                controller: _weightController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return '몸무게를 입력하세요';
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // 폼에 입력된 값 검증
                    if (_formKey.currentState.validate()) {
                      // 검증시 처리
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiResult(
                                  double.parse(_heightController.text.trim()),
                                  double.parse(
                                      _weightController.text.trim()))));
                    }
                  },
                  child: Text('결과'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
