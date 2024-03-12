import 'package:flutter/cupertino.dart';
import 'package:calculator_with_flutter/colors.dart';
import 'package:flutter/material.dart';


class OtherCalculations extends StatefulWidget {
  const OtherCalculations({super.key});

  @override
  State<OtherCalculations> createState() => _OtherCalculationsState();
}

class _OtherCalculationsState extends State<OtherCalculations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.zoom_in_map,size: 50,color: tertiary_color,),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.computer_outlined,size: 50,color: tertiary_color,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.insert_chart,size: 50,color: tertiary_color,)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.area_chart,size: 50,color: tertiary_color,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.rule_rounded,size: 50,color: tertiary_color,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.line_weight,size: 50,color: tertiary_color,)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.local_convenience_store_rounded,size: 50,color: tertiary_color,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.speed,size: 50,color: tertiary_color,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.punch_clock,size: 50,color: tertiary_color,)),
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
