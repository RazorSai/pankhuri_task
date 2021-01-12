import 'package:flutter/material.dart';
import 'package:pankhuri_task/confirmed_custom_painter.dart';

class OrderCompleteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){

            }
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Text(
                "Order Complete",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 150.0,
                          height: 150.0,
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/mehndi_place_holder.jpg'
                                  )
                              )
                          ),
                        ),
                        CustomPaint(
                          painter: ConfirmedCustomTag(),
                          child: Center(
                            child: Text(
                              "CONFIRMED",
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Baking wedding cakes. DIY recipes for your big day, Take control.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0
                            ),
                            child: RichText(
                              text: TextSpan(
                                  text: '27-30 July',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' | ',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.pink,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '3.30-4.30 PM',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.pink,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10.0
                            ),
                            child: Text(
                              "Reg.No.: 0098472838BNG",
                              style: TextStyle(
                                  fontSize: 14.0
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
