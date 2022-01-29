import 'package:flutter/material.dart';
import 'Theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Регистрация',
      debugShowCheckedModeBanner: false,
      theme: MyTheme,
      home: const MyHomePage(title: 'Регистрация'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    const BorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(color: Color(0xFFECEFF1), width: 2)
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.supervised_user_circle_outlined, size: 18, color: Colors.blue),
                    SizedBox(width: 10,),
                    Text("Регистрация",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                SizedBox(height: 22,),
                Text("Чтобы зарегистрироваться введите свой номер телефона и почту",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 14,),
                Text("Телефон",
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 14,),
                SizedBox(
                  height: 34,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      prefixIcon: Padding(padding: EdgeInsets.only(top: 9, bottom: 9, left: 15, right: 0), child: Text('+7')),
                      filled: true,
                      enabledBorder: BorderStyle,
                      focusedBorder: BorderStyle,
                    ),
                  ),
                ),
                SizedBox(height: 22,),
                Text("Почта",
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 14,),
                SizedBox(
                  height: 34,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      filled: true,
                      enabledBorder: BorderStyle,
                      focusedBorder: BorderStyle,
                    ),
                  ),
                ),
                SizedBox(height: 22,),
                Text("Вам придет четырехзначный код, который будет вашим паролем",
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 22,),
                Text("Изменить пароль можно будет в личном кабинете после регистрации",
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 154,
                  height: 42,
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)
                        )
                      ),
                      child: Text("Отправить код"),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
