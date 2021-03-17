
import 'components/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'login_body.dart';


class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
     
     resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xff000000),

    body: SingleChildScrollView( 
            
child: ListView(
  shrinkWrap: true,
    children: <Widget>[

      Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top:20, right:20) ,
        child: TextButton(
    
          onPressed: (){
            clearTextInput(); 
            Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder:(context) => WelcomeLogin())   
                        );
                      }, 
                   
        child: Text("Log Out", 
          style: TextStyle(
          color: Colors.white),
               ),
        ),
      ),
    

   Column(
     children: <Widget>[

     FadeAnimation(
                 1,
        Container( 
           alignment: Alignment.center,
             margin: EdgeInsets.only(top: 150),
     
              child: Image.asset(
                 'assets/images/ga.png', 
                     ),
                    ),
            ),
    
  
     Container( 
       child: Stack(
          alignment: Alignment.center,
          
          children: <Widget>[
            FadeAnimation(
                 1,    
              Container( 
                 child: Image.asset(
                  "assets/images/graphics title.png",
                     height:  80,
                      ),
                    ),
                    ),
                ],
            ),
          ),


      Container( 
       child: Stack(
           alignment: Alignment.center,
          children: <Widget>[
             
        FadeAnimation(
                 1, 
          Container( 
             height:70,
             width: 500,

            child:Text(
              "Where vision and creative solutions evolve",
                textAlign: TextAlign.center,
                
            style: TextStyle(
                 fontSize: 15, fontStyle: FontStyle.italic,
                  color: Colors.white
                     ), 
                   ),

            decoration: BoxDecoration(
                border: Border( bottom: BorderSide(color: Colors.white,), ),
                    ),
                  ),
                ),
                ],
            ),
        ),

       
     FadeAnimation(
                 1,       
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
       
       children: <Widget>[
          SizedBox(
                    height: 200,               
                    ),
          
          Container(
            padding: EdgeInsets.symmetric(horizontal:10),

            child: Icon(
                  Icons.palette,
                  size: 80.0, 
                  color: Colors.white,
                 ),
             ),
                 
          Container(
           padding: EdgeInsets.symmetric(horizontal:10),

            child: Icon(
                Icons.event_note,
                size: 80.0, 
                color: Colors.white,
               ),
             ),

          Container(
           padding: EdgeInsets.symmetric(horizontal:10),

             child: Icon(
                Icons.people, size: 80.0,  color: Colors.white,   
              ),    
            ),

            Container(
           padding: EdgeInsets.symmetric(horizontal:10),

              child: Icon(   
                  Icons.message, size: 80.0,  
                  color: Colors.white, 
                  ), 
                ),
              ]
          ),
        ),
       
      //Row for labels
    //Widget for icons and labels
     FadeAnimation(
                 1,    
       Row(     
         
        children: <Widget>[

         Container(       
           height: 50,
           padding: EdgeInsets.only(left: 130),
         
            child: Column(
                children: <Widget>[
                  Container(
                      child: Text(
                      'Create', 
                        style: TextStyle(color: Colors.white,
                        fontSize: 15,)
                          ),
                        ),
                      ],
                    ), 
                  ),
    
        Container(       
          height: 50,
          padding: EdgeInsets.only(left: 55),

            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                      'Post',   
                      style: TextStyle(color: Colors.white, fontSize: 15,) 
                      ),
                      ),
                    ],
                  ), 
                ),

        Container(       
          height: 50,
          padding: EdgeInsets.only(left: 66),
          
            child: Column(
              children: <Widget>[
                Container(
                    child: Text(  'Follow',  
                    style: TextStyle(color: Colors.white, fontSize: 15,)
                  ),
                ),
              ],
            ), 
          ),

        Container(       
          height: 50,
          padding: EdgeInsets.symmetric(horizontal:51),

          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    'Chat Now',
                    style: TextStyle(color: Colors.white, fontSize: 15,)
                    ),
                   ),                      
                 ],                   
               ),              
            ),
          

          ],
         ),
        ),
       ],
      ),


    ], 
   ),
  ),
    
 );
 }
}

