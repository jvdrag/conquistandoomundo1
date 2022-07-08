import 'package:conquistandoomundo/features/dashBoard/viewDashBoard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../../bemVindoScreen/viewBemVindo.dart';
import '../../cadastro/fireBaseAuthCadastroScreen.dart';
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
            image: AssetImage("/backgroundImage.jpeg"), fit: BoxFit.cover),
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
              )
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
                                    ? 'Enter a valid email'
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
                                  !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                      .hasMatch(passwordController)) {
                                return "Your password should contain Lower and upper\n case letters and a special symbol";
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
                            height: 490,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment(
                                      0.750751793384552, 0.2652396559715271),
                                  end: Alignment(
                                      -0.2652396559715271, 0.26902517676353455),
                                  colors: [
                                    Color.fromARGB(108, 239, 239, 239),
                                    Color.fromRGBO(
                                        196, 196, 196, 0.10000000149011612)
                                  ]),
                            ),
                            child: Container(
                              height:
                                  screenWidth > telaTocaDeLayout ? 400 : 300,
                              width: screenWidth > telaTocaDeLayout ? 310 : 240,
                              child: Form(
                                key: formKeyAuthentication,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Cadastro',
                                      style: TextStyle(
                                        letterSpacing: 0,
                                        color:
                                            Color.fromARGB(221, 255, 255, 255),
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
                                          color: Color.fromARGB(
                                              230, 255, 255, 255),
                                          fontFamily: 'Ubuntu',
                                          fontSize:
                                              screenWidth > telaTocaDeLayout
                                                  ? 16
                                                  : 14,
                                          height: -0.3),
                                    ),
                                    Container(
                                      width: 400,
                                      height: 60,
                                      child: TextFormField(
                                        validator: (emailController) =>
                                            !EmailValidator.validate(
                                                    emailController!)
                                                ? 'Digite um email válido'
                                                : null,
                                        controller: emailController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            filled: true,
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                            hintText: "Email",
                                            fillColor: Color.fromARGB(
                                                166, 142, 139, 139)),
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
                                                  .hasMatch(
                                                      passwordController)) {
                                            return "Sua senha deve conter letras minúsculas,maiúsculas e números";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            filled: true,
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 14),
                                            hintText: "Senha",
                                            fillColor: Color.fromARGB(
                                                166, 142, 139, 139)),
                                      ),
                                    ),
                                    Container(
                                      width: 390,
                                      height: 40,
                                      child: ElevatedButton(
                                          child: Text("Cadastrar".toUpperCase(),
                                              style: TextStyle(fontSize: 14)),
                                          style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                                                  255, 32, 31, 31)),
                                              backgroundColor: MaterialStateProperty.all<Color>(
                                                  Color.fromARGB(
                                                      255, 165, 217, 208)),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      side: BorderSide(color: Color.fromARGB(255, 165, 217, 208))))),
                                          onPressed: () async {
                                            final form = formKeyAuthentication
                                                .currentState!;
                                            if (form.validate()) {
                                              await AuthServiceCadasto()
                                                  .loginUser(
                                                      emailController.text,
                                                      passwordController.text);

                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ViewDashBoard()));
                                            }
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            )),
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
