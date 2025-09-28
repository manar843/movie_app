import 'package:flutter/material.dart';
import 'package:new_app/utils/app_style.dart';

class  Pyramids extends StatelessWidget {
  const  Pyramids({super.key});
static const String routeName='pyramids';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox( height: 33,),
          Text('UI Challenge',style: AppStyles.med20Black,),
          SizedBox( height: 33,),
           Image(image:AssetImage('assets/images/pyr.jpg')),
          SizedBox( height: 33,),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Text('pyramids of giza',style: AppStyles.med20Black,),
     Spacer(),
         Icon(Icons.bookmark,color: Colors.amber,),
        Text('46',style: AppStyles.med20Black,),

      ],
    ),
  ),
          SizedBox( height: 30,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Icon(Icons.call,color: Colors.indigo,),
              Icon(Icons.repeat_outlined,color: Colors.indigo ),
              Icon(Icons.share,color:Colors.indigo, ),

            ],
          ),

          SizedBox( height: 33,),
Text('Egyptian sphinx. Cairo. Giza. Egypt. Travel background.'
    ' Architectural monument. The tombs of the pharaohs. '
    'Vacation holidays background wallpaper',style: AppStyles.med20Black,)
        ],
      ),
    );
  }
}
