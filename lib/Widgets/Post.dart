import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:testing_app01/Widgets/my_progress_indicator.dart';

class Post extends StatelessWidget {
  final int index;
  Size size;

  //this를 이용해 값을 받아오자마자 위에 넣어준다.
  Post(this.index,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(size == null)
      size = MediaQuery.of(context).size;//사용하는 디바이스 화면 size

    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$index/2000/3000',
      placeholder: (BuildContext context, String url,){
        return MyProgressIndicator();
      },
      imageBuilder: (BuildContext context, ImageProvider imageprovider){
        return AspectRatio(
          aspectRatio: 1,//image 비율 1
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageprovider, fit: BoxFit.fitHeight)
            ),
          ),
        );
     },
    );
  }
}