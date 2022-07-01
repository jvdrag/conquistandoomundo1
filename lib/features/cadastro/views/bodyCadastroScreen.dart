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
            image: AssetImage("assets/image-2.jpeg"),
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
                'Seja bem-vindo a\nplataforma Conquistando o\nMundo.',
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Ubuntu',
                    fontSize: 35,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Preencha os campos ao lado para criar\na sua conta e entrar em nossa plataforma',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 150,
              ),
            ],
          ),
          SizedBox(
            width: screenWidth * .25,
          ),
          Container(
              width: 500,
              height: 490,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                    begin: Alignment(0.750751793384552, 0.2652396559715271),
                    end: Alignment(-0.2652396559715271, 0.26902517676353455),
                    colors: [
                      Color.fromARGB(108, 239, 239, 239),
                      Color.fromRGBO(196, 196, 196, 0.10000000149011612)
                    ]),
              ),
              child: Container(
                height: screenWidth > 1200 ? 400 : 300,
                width: screenWidth > 1200 ? 310 : 240,
                child: Form(
                  key: formKeyAuthentication,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Cadastro',
                        style: TextStyle(
                          letterSpacing: 0,
                          color: Color.fromARGB(221, 255, 255, 255),
                          fontFamily: 'Iceland',
                          height: 1,
                          fontSize: 28,
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        height: 5,
                        thickness: 1,
                        indent: 1,
                        endIndent: 1,
                      ),
                      Text(
                        'Bem-Vindo a Plataforma do Conquistando o Mundo!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(230, 255, 255, 255),
                            fontFamily: 'Ubuntu',
                            fontSize: 14,
                            height: -0.3),
                      ),
                      Container(
                        width: 400,
                        height: 60,
                        child: TextFormField(
                          validator: (emailController) =>
                              !EmailValidator.validate(emailController!)
                                  ? 'Digite um email valido'
                                  : null,
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 14),
                              hintText: "Email",
                              fillColor: Color.fromARGB(166, 142, 139, 139)),
                        ),
                      ),
                      Container(
                        width: 400,
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
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 14),
                              hintText: "Senha",
                              fillColor: Color.fromARGB(166, 142, 139, 139)),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 60,
                        child: TextFormField(
                          obscureText: true,
                          controller: verificaPasswordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 14),
                              hintText: "Confirme sua senha",
                              fillColor: Color.fromARGB(166, 142, 139, 139)),
                        ),
                      ),
                      Container(
                        width: 390,
                        height: 40,
                        child: ElevatedButton(
                            child: Text("Cadastrar".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 32, 31, 31)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 165, 217, 208)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: BorderSide(
                                            color:
                                                Color.fromARGB(255, 165, 217, 208))))),
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
                                    builder: (context) => ViewDashBoard()));
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
