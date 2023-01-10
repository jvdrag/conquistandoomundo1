import 'package:conquistandoomundo/features/cadastro/fireBaseAuthCadastroScreen.dart';
import 'package:conquistandoomundo/features/cadastro/viewCadastroScreen.dart';
import 'package:conquistandoomundo/features/dashBoard/viewDashBoard.dart';
import 'package:conquistandoomundo/features/dashboardAulas/viewAulas.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../fireBaseAuthLogInScreen.dart';

class BodyLogInScreen extends StatelessWidget {
  const BodyLogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenWidthPixel = MediaQuery.of(context).size.width;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKeyAuthentication = GlobalKey<FormState>();
    final double telaTocaDeLayout = 1020.0;

    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            opacity: 0.4,
            image: AssetImage("assets/image-2.jpeg"),
            fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seja bem-Vindo ao\nConquistando o Mundo.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidthPixel > telaTocaDeLayout ? 44 : 28,
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
                  fontSize: screenWidthPixel > telaTocaDeLayout ? 20 : 16,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 74,
              ),
            ],
          ),
          Card(
              color: Colors.grey.withOpacity(0.4),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                height: screenWidth > telaTocaDeLayout ? 500 : 400,
                width: screenWidth > telaTocaDeLayout ? 500 : 400,
                child: Form(
                  key: formKeyAuthentication,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Bem-Vindo a Plataforma do Coquistando o Mundo!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                screenWidth > telaTocaDeLayout ? 16 : 14,

                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          child: TextFormField(
                            validator: (emailController) =>
                            !EmailValidator.validate(emailController!)
                                ? 'Digite um email valido'
                                : null,
                            controller: emailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                hintText: "Email",
                                fillColor: Colors.grey.withOpacity(0.3)),
                          ),
                        ),
                        Container(
                          height: 60,
                          child: TextFormField(
                            obscureText: true,
                            controller: passwordController,
                            validator: (passwordController) {
                              if (passwordController!.isEmpty ||
                                  !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                                      .hasMatch(passwordController)) {
                                return "Senha Invalida";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                hintText: "Senha",
                                fillColor: Colors.grey.withOpacity(0.3)),
                          ),
                        ),
                        Container(
                          width: 500,
                          height: 50,
                          child: ElevatedButton(
                              child: Container(
                                child: Text("LOGIN",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              style: ButtonStyle(
                                  foregroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.blueGrey),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ))),
                              onPressed: () async {
                                final form =
                                formKeyAuthentication.currentState!;
                                if (form.validate()) {

                                  await AuthServiceCadasto().loginUser(
                                      emailController.text,
                                      passwordController.text);
                                }
                              }),
                        ),
                        TextButton(
                            child: Text(

                                "Ainda nÃo possui uma conta?".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                  const ViewCadastroScreen()));
                            }),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}