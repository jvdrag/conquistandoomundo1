import 'package:conquistandoomundo/features/pergunta1/viewPergunta1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BemVindoScreen extends StatelessWidget {
  const BemVindoScreen({Key? key}) : super(key: key);

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
                      image: AssetImage("/BemVindo.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 50,),
              Container(color: Colors.grey[400],
                height: 400,
                width: 550,
                child: Column(
                  children: [
                    SizedBox(height: 20,),

                    Text('Bem-vindo ao teste de perfil!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(height: 30,),

                    Text('Siga adiante, responda as perguntas da maneira\nmais honesta possível e descubra suas chances\nde fazer faculdade nos Estados Unidos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                       // fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(height: 30,),

                    Text('Boa Sorte!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    SizedBox(height: 30,),

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
