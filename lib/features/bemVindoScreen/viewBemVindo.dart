import 'package:conquistandoomundo/features/pergunta1/viewPergunta1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BemVindoScreen extends StatelessWidget {
  const BemVindoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final double telaTocaDeLayout = 1020.0;

    return Scaffold(
      body: Container(
        color: Color(0xff203757),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 20,),

              Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        // The child of a round Card should be in round shape
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      ),
                    child: Center(child: Text('20%',
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                  color: Colors.grey.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(20.0),
                  child: Container(
                    color: Colors.blueGrey.withOpacity(0.1),
                    height: screenWidth >telaTocaDeLayout ? 500 : 400,
                    width: screenWidth >telaTocaDeLayout ? 500 : 400,
                    child: Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.account_circle,
                              size: 120,
                              color: Colors.lightBlue,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text('Bem-vindo ao teste de perfil!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                Text('Siga adiante, responda as perguntas da maneira\nmais honesta possível e descubra suas chances\nde fazer faculdade nos Estados Unidos',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth >telaTocaDeLayout ? 16 : 14,

                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),


                            Container(
                              height: 40,
                              width: 400,
                              child: ElevatedButton(
                                  child: Text(
                                      "INICIAR",
                                      style: TextStyle(fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
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
                                        )
                                    );
                                  }
                              ),
                            ),
                          ],
                        ),
                      ),
                  )
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
