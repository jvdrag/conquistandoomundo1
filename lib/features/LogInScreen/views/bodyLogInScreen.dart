import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../../bemVindoScreen/viewBemVindo.dart';
import '../fireBaseAuthLogInScreen.dart';

class BodyLogInScreen extends StatelessWidget {
  const BodyLogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidthPixel = MediaQuery.of(context).size.width;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKeyAuthentication = GlobalKey<FormState>();


    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("/backgroundImage.jpeg"),
            fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          SizedBox(width: screenWidth*.1,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Seja bem-Vindo ao\nConquistando o Mundo.',
                style: TextStyle(
                    color: Colors.white,
                  fontSize:  screenWidthPixel >1200 ? 44 : 28,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(height: 24,),
              Text('Preencha os campos ao lado para acessar\na sua conta e entrar em nossa plataforma',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidthPixel >1200 ? 20 : 16,
                //fontWeight: FontWeight.bold,

               ),
              )
            ],
          ),
          SizedBox(width: screenWidth*.25,),
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

              height: screenWidth >1200 ? 400 : 300,
              width: screenWidth >1200 ? 310 : 240,
              child: Form(
                key: formKeyAuthentication,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text('Bem-Vindo a Plataforma do Coquistando o Mundo!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 60,
                        child: TextFormField(
                          validator: (emailController) => !EmailValidator.validate(emailController!)
                              ? 'Enter a valid email'
                              : null,
                          controller: emailController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.white,
                                  fontSize: 14),
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
                            if (passwordController!.isEmpty || !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(passwordController)){
                              return "Your password should contain Lower and upper\n case letters and a special symbol";
                            }else{
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.white,
                                  fontSize: 14),
                              hintText: "Senha",
                              fillColor: Colors.blueGrey.withOpacity(0.4)
                        ),
                        ),
                      ),
                      Center(
                        child: Container(

                          height: 40,
                          child: ElevatedButton(
                              child: Container(
                                child: Text(
                                    "LOGIN".toUpperCase(),
                                    style: TextStyle(fontSize: 14)
                                ),
                              ),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),

                                      )
                                  )
                              ),
                              onPressed: () async {

                                final form = formKeyAuthentication.currentState!;
                                if (form.validate()) {
                                  print('aaaaaaaaaaaaaa');

                                  await AuthServiceLogIn().loginUser(emailController.text, passwordController.text);

                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BemVindoScreen()
                                      ));
                                }
                              }
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}

