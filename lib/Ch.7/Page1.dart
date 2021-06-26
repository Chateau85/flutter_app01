import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text(
    //     '홈 페이지', // 이 부분의 글자만 다르게 작성
    //     style: TextStyle(fontSize: 40),
    //   ),
    // );
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  // 상단
  Widget _buildTop() {
    //return Text('Top');
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: GestureDetector(
                  onTap: () {
                    print('클릭');
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.local_taxi, size: 40),
                      Text('택시'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('블랙'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('바이크'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('대리'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('택시'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('블랙'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.local_taxi, size: 40),
                    Text('바이크'),
                  ],
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: GestureDetector(
                  onTap: () {
                    print('클릭');
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.local_taxi, size: 40),
                      Text('대리'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 중단
  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
      ),
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  // 하단
  Widget _buildBottom() {
    //return Text('Bottom');
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(), // 이 리스트의 스크롤 동작 금지
      shrinkWrap: true, // 이 리스트가 다른 스크롤 객체 안에 있다면 true로 설정해야 함
      children: items,
    );
  }
}
