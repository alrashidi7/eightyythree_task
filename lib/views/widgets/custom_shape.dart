import 'package:eightyythree_task/consts/const.dart';
import 'package:flutter/material.dart';
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = primaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.0625000,size.height*0.4000000);
    path0.quadraticBezierTo(size.width*-0.0021875,size.height*0.5000000,size.width*0.0625000,size.height*0.6020000);
    path0.cubicTo(size.width*0.1721875,size.height*0.6015000,size.width*0.6328125,size.height*0.6025000,size.width*0.6400000,size.height*0.5980000);
    path0.cubicTo(size.width*0.6650000,size.height*0.6020000,size.width*0.6000000,size.height*0.3960000,size.width*0.5637500,size.height*0.4000000);
    path0.quadraticBezierTo(size.width*0.4856250,size.height*0.4005000,size.width*0.0625000,size.height*0.4000000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
