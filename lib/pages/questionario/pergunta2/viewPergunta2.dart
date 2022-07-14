import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pergunta1/viewPergunta1.dart';
import '../pergunta3/viewPergunta3.dart';

class ViewPergunta2 extends StatelessWidget {
  const ViewPergunta2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(229,229,229,255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 550,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("/Pergunta2.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 50,),
              Container(color: Colors.grey[400],
                height: 400,
                width: 550,
                child: Column(
                  children: [
                    SizedBox(height: 25,),

                    Text('Pergunta 2',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(height: 50,),

                    Container(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                          child: Text(
                              "BASICO".toUpperCase(),
                              style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.transparent,)
                                  )
                              )
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPergunta3()
                                ));
                          }
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                          child: Text(
                              "INTERMEDIARIO".toUpperCase(),
                              style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.transparent,)
                                  )
                              )
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPergunta3()
                                ));
                          }
                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                          child: Text(
                              "AVANCADO".toUpperCase(),
                              style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.transparent,)
                                  )
                              )
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPergunta3()
                                ));
                          }
                      ),
                    ),
                    SizedBox(height: 40,),

                    Container(
                      height: 34,
                      width: 120,
                      child: ElevatedButton(
                          child: Text(
                              "VOLTAR",
                              style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.transparent,)
                                  )
                              )
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ViewPergunta1()
                                ));
                          }
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
