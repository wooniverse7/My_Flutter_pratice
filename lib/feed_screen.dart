import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//StatefullWidget의 기능 사용허가
     appBar: AppBar(
       title: Text(
         'Sharing a Walk Course',
         style: TextStyle(
           fontFamily: 'veganStyle',
         color: Colors.black87,

         ),
       ),
     ),
    );
  }
}
