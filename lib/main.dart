import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: new Home(),debugShowCheckedModeBanner: false,),);
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ClipPath(
      child:new Image.asset("assets/photo.jpg"),
      clipper: new MyClipper(),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      var path=new Path();
      path.lineTo(0.0, size.height-20);
      var firstControlPoint= new Offset(size.width/4, size.height);
      var firstEndPoint= new Offset(size.width/2.25, size.height-30.0);
      path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy
      ,firstEndPoint.dx, firstEndPoint.dy);
      var secondControlPoint=
      new Offset(size.width-(size.width/3.25), size.height-65);
      var secondEndPoint=
      new Offset(size.width, size.height-40);
      path.quadraticBezierTo(secondControlPoint.dx,secondControlPoint.dy,
       secondEndPoint.dx,secondEndPoint.dy);

       path.lineTo(size.width, size.height-40);
       path.lineTo(size.width, 0.0);
       path.close();
       return path;

    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;

}