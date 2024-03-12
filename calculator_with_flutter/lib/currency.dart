import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator_with_flutter/colors.dart';


class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: background_color,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    print("App bar geri tuşu seçildi");
                    Navigator.pop(context);
                  },


                      icon: const Icon(Icons.arrow_back_ios_new) ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 10,right:10,),
                    child: IconButton(onPressed: (){},
                      icon: Icon(Icons.currency_bitcoin,size: 50,color: tertiary_color,),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10,),
                    child: IconButton(onPressed: (){},
                      icon: Icon(Icons.money_sharp,size: 50,color: tertiary_color,),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10,),
                    child: IconButton(onPressed: (){},
                      icon: Icon(Icons.attach_money,size: 50,color: tertiary_color,),
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
