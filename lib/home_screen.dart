import 'package:flutter/material.dart';

import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
static const String routeName='home';
  @override
  Widget build(BuildContext context) {
    final List<Color> gradient = [
       Colors.blue,
      Colors.purple,
      Colors.red

    ];
    return Scaffold(
      body: Column(
         children: [
          SizedBox(height: 33,),
          Text('UI Challenge 1',style: TextStyle(
            color: Colors.black,
            fontSize: 22
           ),
          //  textAlign:TextAlign.center ,
          ),
           SizedBox(height: 33,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(33),
              decoration: BoxDecoration(
               // borderRadius: BorderRadius.circular(55),
                color: Colors.blue
              ),
                child: Icon(Icons.check),
              ),
              Container(

                padding: EdgeInsets.all(33),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradient,

                  ),
                    // color: Colors.blue
                ),
                child: Icon(Icons.mark_as_unread_sharp),
              )
            ],
          ),
           SizedBox(height: 44,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(33),
                decoration: BoxDecoration(
               //    borderRadius: BorderRadius.circular(66),
                    shape:BoxShape.circle ,
                    color: Colors.blue
                ),
                child: Text('Circle'),
              ),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(22),
                    color: Colors.blue
                ),
                child: Text('Rounded \n radius'),
              )
            ],
          ),
          Spacer(),
          IconButton(onPressed: ( ){
            Navigator.pushNamed(context, Login.routeName);
          }, icon: Icon(Icons.abc,size: 55,))
        ],
      ),

    );
  }
}
