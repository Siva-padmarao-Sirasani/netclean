import 'package:flutter/material.dart';
class CContainer extends StatelessWidget {
  CContainer({
  Key? key,
  this.title,
  this.body,
  this.iconData,
  }):super(key:key);
  String? title;
  String? body;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:48.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: const Color(0xffe3e3e3))
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundColor: const Color(0xff143e59),
            child: Icon(iconData,color: Colors.white,),
          ),
          const SizedBox(width: 15.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!,style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
              Text(body!,style: const TextStyle(fontSize: 11.0),),
            ],
          ),
        ],
      ),
    );
  }
}
