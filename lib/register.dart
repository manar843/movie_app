import 'package:flutter/material.dart';
import 'package:new_app/utils/app_style.dart';
import 'package:new_app/widgets/custom_text_field.dart';
import 'package:new_app/widgets/text_field_widget.dart';

class Register extends StatelessWidget {
  const Register({super.key});
static const String routeName='register';
  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('Login Account',style: AppStyles.bold20white.
            copyWith(color: Colors.black),),
            SizedBox(height: sizeScreen.height*.01,),
            Text('Please login with registered account',style: AppStyles.med20Black.
            copyWith(color: Colors.grey,fontSize: 15),),
              
              TextFieldWidget(title: 'Enter your email or phone number',styleTitle:AppStyles.med20Black.
            copyWith( color: Colors.grey),colorIcon:Colors.grey , icon: Icon(Icons.mail),colorBackground: Colors.white,),
            SizedBox(height: sizeScreen.height*.01,),
            TextFieldWidget(title: 'Create your password',styleTitle:AppStyles.med20Black.
            copyWith( color: Colors.grey),colorIcon:Colors.grey , icon: Icon(Icons.lock_outline),
              colorBackground: Colors.white, suffixIcon: Icon(Icons.remove_red_eye),suffixIconColor: Colors.grey,)
        ,
            SizedBox(height: sizeScreen.height*.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed:  (){}, child: Text('Forget password?',
                  style:AppStyles.bold20white.copyWith(color: Colors.red)),),
            ],
          ),
            SizedBox(height: sizeScreen.height*.01,),
            ElevatedButton(
              child: Text('Sign In ',style:AppStyles.bold20white,),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(33)),
                padding: EdgeInsets.symmetric(horizontal: 99, vertical: 20),
                  textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: sizeScreen.height*.01,),
            Text('Or using other method ',style: AppStyles.med20Black.
            copyWith(color: Colors.grey),),
             Divider(indent:22 ,endIndent: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.g_mobiledata_outlined,color: Colors.red,size: 55,),
                SizedBox(width: sizeScreen.width*.01,),
                Text('Sign in with Google',style: AppStyles.bold20white.
                copyWith(color: Colors.black),),

              ],
            ),
            SizedBox(height: sizeScreen.height*.01,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.facebook,color: Colors.blueAccent,size: 33,),
               SizedBox(width: sizeScreen.width*.01,),
               Text('Sign in with Facebook',style: AppStyles.bold20white.
               copyWith(color: Colors.black),),
             ],
           )
          ],
        ),
      ),
    );
  }
}
