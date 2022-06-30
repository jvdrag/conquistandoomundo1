import 'package:conquistandoomundo/features/dashBoard/viewDashBoard.dart';
import 'package:conquistandoomundo/features/dashboardAulas/viewAulas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../../bemVindoScreen/viewBemVindo.dart';
import '../fireBaseAuthCadastroScreen.dart';

class BodyCadastroScreen extends StatelessWidget {
  const BodyCadastroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidthPixel = MediaQuery.of(context).size.width;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final verificaPasswordController = TextEditingController();
    final formKeyAuthentication = GlobalKey<FormState>();

    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            opacity: 0.4,
            image: AssetImage("/image-2.jpeg"),
            fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          SizedBox(
            width: screenWidth * .1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seja bem-Vindo ao\nConquistando o Mundo.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidthPixel > 1200 ? 44 : 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Preencha os campos ao lado para acessar\na sua conta e entrar em nossa plataforma',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidthPixel > 1200 ? 20 : 16,
                  //fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(
            width: screenWidth * .25,
          ),
          Card(
              color: Colors.blue[400],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20.0),
              child: Container(
                height: screenWidth > 1200 ? 400 : 300,
                width: screenWidth > 1200 ? 310 : 240,
                child: Form(
                  key: formKeyAuthentication,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Faca o seu login',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 60,
                        child: TextFormField(
                          validator: (emailController) =>
                              !EmailValidator.validate(emailController!)
                                  ? 'Digite um email valido'
                                  : null,
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 14),
                              hintText: "Email",
                              fillColor: Colors.white),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 60,
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          validator: (passwordController) {
                            if (passwordController!.isEmpty ||
                                !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                    .hasMatch(passwordController)) {
                              return "Sua senha deve conter letras minusculas\ne maiuculas e numeros";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 14),
                              hintText: "Senha",
                              fillColor: Colors.white),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 60,
                        child: TextFormField(
                          obscureText: true,
                          controller: verificaPasswordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 14),
                              hintText: "Confirme sua senha",
                              fillColor: Colors.white),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        child: ElevatedButton(
                            child: Text("ENTRAR".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: BorderSide(
                                            color: Colors.blueAccent)))),
                            onPressed: () async {
                              final form = formKeyAuthentication.currentState!;
                              if (form.validate() &&
                                  verificaPasswordController.text ==
                                      passwordController.text) {
                                print('aaaaaaaaaaaaaa');

                                await AuthServiceCadasto().registerUser(
                                    emailController.text,
                                    passwordController.text);

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ViewAulas()));
                              }
                            }),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
