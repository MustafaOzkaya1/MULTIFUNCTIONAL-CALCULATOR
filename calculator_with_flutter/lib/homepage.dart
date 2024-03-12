


import 'package:calculator_with_flutter/colors.dart';
import 'package:calculator_with_flutter/currency.dart';
import 'package:calculator_with_flutter/other_calculations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {




  @override
  State<HomePage> createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {

  int secilenIndeks = 0;
  var sayfalar = [HomePage(),const OtherCalculations(),const Currency()];

  String sayi="";
  String islem ="";
  String sayi1="";
  String sayi2="";

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.other_houses_rounded), label: "Other"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Currency"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: background_color,
        selectedItemColor: primary_color,
        unselectedItemColor: Colors.white,
        onTap: (indeks) {
          setState(() {
            secilenIndeks = indeks;
            if(secilenIndeks==0){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            }
            else if(secilenIndeks==1){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OtherCalculations()));
            }
            else if(secilenIndeks==2){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Currency()));
            }
          });
        },
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:150,),
                    child: Text("${sayi1 + islem + sayi2}",style: TextStyle(fontSize: 50,color: tertiary_color,fontFamily: "Oswald"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:150,),
                    child: Text("${sayi}",style: TextStyle(fontSize: 50,color: secondary_color,fontFamily: "Oswald"),),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(onPressed: (){

                  }, child: Text("2nd",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (

                      ){

                  }, child: Text("deg",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){

                  }, child: Text("sin",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){

                  }, child: Text("cos",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){

                  }, child: Text("tan",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(onPressed: (){

                  }, child: Text("x^y",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){

                  }, child: Text("lg",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){

                  }, child: Text("ln",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){

                  }, child: Text("(",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){

                  }, child: Text(")",style: TextStyle(fontSize: 25,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(onPressed: (){

                  }, child: Text("√x",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi="";
                    });

                  }, child: Text("c",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: primary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.backspace,size: 25,color: primary_color,)),
                  ),



                  ElevatedButton(onPressed: (){

                  }, child: Text("%",style: TextStyle(fontSize: 30,fontFamily: "Oswald",color: primary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    islem="÷";
                    sayi1=sayi;
                    sayi="";
                  }, child: Text("÷",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: primary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(onPressed: (){

                  }, child: Text("π",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (

                      ){
                    setState(() {
                      sayi += "1";
                    });

                  }, child: Text("1",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "2";

                    });

                  }, child: Text("2",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "3";

                    });

                  }, child: Text("3",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    islem="+";
                    sayi1=sayi;
                    sayi="";


                  }, child: Text("+",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: primary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(onPressed: (){

                  }, child: Text("x!",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "4";

                    });

                  }, child: Text("4",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "5";

                    });

                  }, child: Text("5",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "6";

                    });

                  }, child: Text("6",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    islem="-";
                    sayi1=sayi;
                    sayi="";



                  }, child: Text("-",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: primary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  ElevatedButton(onPressed: (){

                  }, child: Text("1/x",style: TextStyle(fontSize: 32,fontFamily: "Oswald",color: tertiary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "7";

                    });

                  }, child: Text("7",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "8";

                    });

                  }, child: Text("8",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      sayi += "9";

                    });

                  }, child: Text("9",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    islem="x";
                    sayi1=sayi;
                    sayi="";


                  }, child: Text("x",style: TextStyle(fontSize: 40,fontFamily: "Oswald",color: primary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 10 , left: 8),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.fullscreen_exit,size: 50,color: primary_color,)),
                  ),
                  ElevatedButton(onPressed: (){

                  }, child: Text("e",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){

                  }, child: Text("0",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),

                  ElevatedButton(onPressed: (){

                  }, child: Text(",",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color: secondary_color),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: background_color,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    sayi2=sayi;
                    if(islem=="÷"){
                      double y= double.parse(sayi1)/double.parse(sayi2);
                      setState(() {
                      sayi = y.toString();
                      print(sayi);
                      });
                    }
                    else if(islem=="+"){
                      int y= int.parse(sayi1)+int.parse(sayi2);
                      setState(() {
                      sayi = y.toString();
                      print(sayi);
                      });
                    }
                    else if(islem=="-"){
                      double y= double.parse(sayi1)-double.parse(sayi2);
                      setState(() {
                      sayi = y.toString();
                      });
                    }
                    else if(islem=="x"){
                      double y= double.parse(sayi1)*double.parse(sayi2);
                      setState(() {
                      sayi = y.toString();
                      });
                    }



                  }, child: Text("=",style: TextStyle(fontSize: 50,fontFamily: "Oswald",color:secondary_color ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary_color,
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
