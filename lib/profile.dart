import 'package:flutter/material.dart';
import 'package:new_app/utils/app_style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const String routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [Image(image: AssetImage('assets/images/coding.png'))],
          ),
          Positioned(
            top: 300,
            child: Text('Manar ali', style: AppStyles.med20Black),
          ),
          Positioned(
            top: 200,
            right: 166,
            child: Container(
              height: 123,
              width: 77,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(22),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/duck.png'),
              ),
            ),
          ),
          Positioned(
            top: 300,
            child: Text('manar ali', style: AppStyles.med20Black),
          ),
          Positioned(
            top: 322,
            child: Text('flutter Developer', style: AppStyles.med20Black),
          ),
          Positioned(
            top: 400,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 477,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      '39',
                      style: AppStyles.med20Black.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Projects', style: AppStyles.med20Black),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      '529',
                      style: AppStyles.med20Black.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Following', style: AppStyles.med20Black),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      '5435',
                      style: AppStyles.med20Black.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Follower', style: AppStyles.med20Black),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 577,
            left: 12,
            child: Text(
              textAlign: TextAlign.start,
              'About',
              style: AppStyles.med20Black.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 620,
            left: 12,
            child: Text(
              textAlign: TextAlign.start,
              'Flutter developer software',
              style: AppStyles.med20Black,
            ),
          ),
        ],
      ),
    );
  }
}
