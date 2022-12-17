import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset('images/lock (2).png'),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Username'),
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                        onPressed: (() {}),
                        child: const Text('Forgot Password?')),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: (() {}), child: const Text('Sign In')))
            ],
          ),
        ),
      )),
    );
  }
}
