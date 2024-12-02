import 'package:flutter/material.dart';
import 'package:flutter_catalog/utills/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name ="";
 
  bool changebutton=false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext) async{
    if(_formkey.currentState!.validate()){
      setState(() {
                changebutton=true;
              });
              await Future.delayed(Duration (seconds:1)) ;
               await Navigator.pushNamed(context, MyRoutes.homeRoute);
                setState(() {
                changebutton=false;
              });
  }}

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
           
            fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text("Welcome $name" ,
            selectionColor: context.primaryColor,
            style: 
            TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: context.primaryColor,
            ),
            
            ),
            
            SizedBox(height: 20),
           

            Padding(
              
              padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:32),
              child: Column(
                
                children: [
                  TextFormField(
                       decoration: InputDecoration(
                  hintText: "Enter Username",hintStyle: TextStyle(
                color: context.primaryColor,
              ),
                   labelText: "Username" ,labelStyle: TextStyle(
                color: context.primaryColor,
              ) ,
                   
                       ),
                       validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null;
                       },
                       onChanged:(value){
                        name=value;
                        
                        setState(() {
                        });}

              ),
              TextFormField(
                
                
                        obscureText: true,
                       decoration: InputDecoration(
              hintText: "Enter Password",hintStyle: TextStyle(
                color: context.primaryColor,
              ),
              labelText: "Password",labelStyle: TextStyle(
                color: context.primaryColor,
              ) ,
              
                       ),
                       validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        }
                        else if(value.length<6){
                          return "Password length should be at least 6";
                        }
                        return null;
                       },
                       
              ),
               SizedBox(height: 60),
            Material(
              
              color : context.cardColor,
               borderRadius: BorderRadius.circular(changebutton?50:8),
              child: InkWell(
                splashColor: context.canvasColor,
                onTap:  ()async=> moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  color: context.primaryColor,
                  
                  height: 50,
                  width: changebutton?50:150,
                  alignment: Alignment.center,
                  child:changebutton?Icon(Icons.done,color: context.cardColor,): Text (
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: context.cardColor,
                    ),
                  ),
                ),
              ),
            )
            
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}