import 'package:flutter/material.dart';

class LFStarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color  selectedColor;
  final Widget unselectedImage;
  final Widget selectedImage;

  LFStarRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor  = const Color(0xffff0000),
    Widget unselectedImage, Widget selectedImage
}):unselectedImage = unselectedImage ?? Icon(Icons.star_border,color:unselectedColor,size:size),
  selectedImage = selectedImage ?? Icon(Icons.star,color: selectedColor,size: size,);






  @override
  _LFStarRatingState createState() => _LFStarRatingState();
}

class _LFStarRatingState extends State<LFStarRating> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: buidUnselectedStar(),),
        Row(mainAxisSize: MainAxisSize.min,children:buidselectedStar(),)
      ],
    );
  }

  List<Widget> buidUnselectedStar(){
    return List.generate(widget.count, (index){
      return widget.unselectedImage;
    });
  }
  
  List<Widget>  buidselectedStar(){
    // 1.创建stars
    List<Widget> stars = [];
    final star = widget.selectedImage;
    //2.创建满填充的star
    double oneValue = widget.maxRating /widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    for(var i = 0;i < entireCount;i++){
      stars.add(star);
    }
    // 3.构建部分填充star
    double leftWight = ((widget.rating/oneValue) - entireCount) * widget.size;
    final halfStar  = ClipRect(
      clipper: LFStarClipper(leftWight),
      child: star,
    );
    stars.add(halfStar);

    if(stars.length > widget.count){
      return stars.sublist(0,widget.count);
    }

    return stars;
  }


}
class LFStarClipper extends CustomClipper<Rect>{
  double width;
  LFStarClipper(this.width);

  @override
  getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
