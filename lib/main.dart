import 'package:flutter/material.dart';
import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false, // hide debug

    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController login = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  String imageSource = "images/question-mark.png";

  @override
  void initState() {
    super.initState();
    _loadCredentials();
  }

  // Save the encrypted login name and password
  Future<void> _saveCredentials() async {
    EncryptedSharedPreferences esp = EncryptedSharedPreferences();
    await esp.setString('username', login.text);
    await esp.setString('password', password.text);
    //await esp.setString('shouldLoad', 'true'); // set the flag as true when saving information
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Credentials saved')),
    );
  }

  //Clear the encrypted login name and password
  Future<void> _clearCredentials() async {
    EncryptedSharedPreferences esp = EncryptedSharedPreferences();
    await esp.remove('username');
    await esp.remove('password');
    //await esp.setString('shouldLoad', 'false'); // set the flag as true if not saving information
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Credentials cleared')),
    );
  }
  //Load the encrypted login name and password
  Future<void> _loadCredentials() async {
    EncryptedSharedPreferences esp = EncryptedSharedPreferences();
    final String? savedUsername = await esp.getString('username');
    final String? savedPassword = await esp.getString('password');
    //final String? shouldLoad = await esp.getString('shouldLoad'); // load the information if the flag was true


    if (savedUsername != null && savedPassword != null &&
        savedUsername.isNotEmpty && savedPassword.isNotEmpty) {
      setState(() {
        login.text = savedUsername;
        password.text = savedPassword;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Credentials loaded'),
            duration: const Duration(seconds:15),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                setState(() {
                  login.clear();
                  password.clear();
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Input fields cleared')),
                );
              },
            ),
          ),
        );
      });
    }
  }


  void _loginClick() {
    if (login.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter both username and password')),
      );
      return;
    }
    setState(() {
      if(password.text == "QWERTY123"){
        imageSource = "images/idea.png";
      }
      else{
        imageSource = "images/stop.png";
      }
    });

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Save Credentials'),
          content: const Text('Do you want to save your username and password?'),
          actions: [
            ElevatedButton(
              onPressed: () async {
                await _saveCredentials();
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
            ElevatedButton(
              onPressed: () async {
                await _clearCredentials();
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                controller: login,
                decoration: const InputDecoration(
                  hintText: "Please enter your user name",
                  labelText: "Login",
                  border: OutlineInputBorder(),
                )
            ),
            TextField(
                controller: password,
                obscureText:
                true, //hide the password when typing
                decoration: const InputDecoration(
                  hintText: "Please enter your password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                )
            ),
            ElevatedButton(onPressed: _loginClick, child: Text("Login")),
            Image.asset(imageSource, width: 300, height: 300)
          ],
        ),
      ),
    );
  }
}
