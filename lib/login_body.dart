import 'package:flutter/material.dart';
import 'home_body.dart';
import 'components/FadeAnimation.dart';



class WelcomeLogin extends StatelessWidget {

 
 @override
 

  Widget build(BuildContext context) {
    
    return Scaffold(
      
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset:true,
      
        backgroundColor: Color(0xff000000),
        
    
  body: SingleChildScrollView(  
          
child: ListView(
  shrinkWrap: true,

   children: <Widget>[

SizedBox(
  height:150,
      ),
            
         FadeAnimation(
                 1,    
                  Container( 
                    height: 280,
                    child: Image.asset(
                        "assets/images/ga.png",
                        height:  280,
                      ),
                    ),
                 
          ),
                        


 Container(
      height: 80,
       child: Stack(
          alignment: Alignment.center,
          children: <Widget>[

                Positioned(        
                child:FadeAnimation(
                         1,    
                    Container( 
                       margin: EdgeInsets.symmetric(vertical: 10),
                       padding: EdgeInsets.symmetric(
                         horizontal: 20, vertical: 5),
                         width: 500,
                        decoration: BoxDecoration(
                            color: Colors.white,
                             borderRadius: BorderRadius.circular(30),
                                   ),
                      
                  
                child: TextField(
                      controller: emailController,
                      autocorrect: true,
                      decoration: InputDecoration(
                            hintText: 'Your Email',
                            icon: Icon(Icons.person,
                            color: Colors.black,
                            ),
                     border: InputBorder.none, ),
         
                     ),

                    ),
                   ),
                  ),
                  
                   
             ],
           ),
          ),
  
Container(
    height: 80,
    child: Stack(
        alignment: Alignment.center,
        children: <Widget>[

            Positioned(        
              child: FadeAnimation(
                       1,
                  Container( 
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: 500,
                     decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                         ),
                    
                    child: TextField(
                        controller: passwordController,
                        autocorrect: true,
                        obscureText: true,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                            suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.black,
                              ),
                          ),
                        ),
                       ),
                      ) , 
                     ),
         ],
       ),
     ), 
      

 Container(
    child: Stack(
      children: <Widget>[
           FadeAnimation(
                  1,
               Container(
                  height: 60,
                  width: 700,
                  margin: EdgeInsets.symmetric(horizontal: 80),
                  padding: EdgeInsets.symmetric(vertical: 15),

                  child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(  
                            color: Colors.blue[300],
                          ),
                        ),
                      ),
                    )
                  ]
                )
              ),
    

Container(
    child: Stack(
      alignment: Alignment.center,
         children: <Widget>[
            FadeAnimation(
                    1,
              Container(
                height: 60,
                width: 200,
                margin: EdgeInsets.only(bottom: 15),
                    
                  child: RaisedButton( 
                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(50.0),
                       ),
                      
                      child: Text(
                          "Login",
                          style: TextStyle( 
                            fontSize: 20,
                             ),
                           ),

                      onPressed: () {
                      if(emailController.text == "cictapps@wvsu.edu.ph" && 
                          passwordController.text == 'toor') {
                          Navigator.push(
                            context,  
                            MaterialPageRoute(builder:(context) => Body())   
                           );           
                        } else if (emailController.text == null && 
                            passwordController.text == null) {
                            showAlertDialog( context );

                       }else {
                          showAlertDialog( context  );
                         }
                       }
                    ),
                  ),
                 ),
           
          
            ],
          ),
        ),
     
      
      ],
     ),
   ),
  );
 }
}


final emailController = TextEditingController();
final passwordController = TextEditingController();

showAlertDialog (BuildContext context) {
  

AlertDialog alert = AlertDialog(
  
  title:Container(
    padding: EdgeInsets.only(top: 10,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)),
     
     child: Text( "Incorrect email/password. ",
        textAlign: TextAlign.center, 
        style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.normal,            
          ),
        ),
     ),
  
      actions: [
          FlatButton(
            padding: EdgeInsets.only(right:22, bottom:22),
            child: Text("Try Again",
              style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              ),
             ),
                
          onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
);
   
showDialog(
  context: context,
   builder: (BuildContext context){
     return alert;
   },
   );
}

clearTextInput(){
  
  emailController.clear();
  passwordController.clear();
}