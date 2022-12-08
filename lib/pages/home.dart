import 'package:flutter/material.dart';

class MyHomePage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 250,
          // color: Colors.red,
          // ignore: unnecessary_new
          decoration: new BoxDecoration(
            color:Colors.red,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery.of(context).size.width,100),
            )
          ),
        ),
        Positioned(child: Container(
          margin: EdgeInsets.only(left: 20,top: 150,right: 20,bottom: 100),
          height: 500,
          width: 500,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(top: 30,right: 20,bottom: 5,left: 20),
              child: SingleChildScrollView(
                child: Column(
                   children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        child: Icon(Icons.login,
                        size: 70,),
                        backgroundColor: Colors.red,
                        
                      ),
                    ),
                       SizedBox(height: 10,),
                    Text('Login',
                    style: TextStyle(
                      fontSize: 30,
                    ),),
                    SizedBox(height: 20,),
                    TextField(
                      style:TextStyle(color:Colors.black),
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Email',
                                  labelStyle:TextStyle(color:Colors.red),
                                  hintText: 'Type your email',
                                              
                                              
                                ),
                    ) ,
                    SizedBox(height: 10,),
                    TextFormField(
                      style:TextStyle(color:Colors.black),
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Password',
                                  labelStyle:TextStyle(color:Colors.red),
                                  hintText: 'Type your password',
                                  ),
                              obscureText: true,
                    ),
                    SizedBox(height: 50,),
                    ElevatedButton( onPressed: (() {} ), 
                                child: Text('Login'),
                                              
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(300,40),
                                primary: Colors.red,
                                elevation: 1,
                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
                              ),
                  
                    )
                       
                   ],
                ),
              ),
            ),
          ),
        ))

      ]),
    );
  }
}