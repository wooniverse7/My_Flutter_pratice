import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final int index;

  //this를 이용해 값을 받아오자마자 위에 넣어준다.
  const Post(this.index,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$index/200/300',
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