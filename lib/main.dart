import 'package:flutter/material.dart';
import 'package:my_contacts/my_provider.dart';
import 'package:provider/provider.dart';


import 'my_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  ChangeNotifierProvider(
       create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyContact(),
        
      ),
    );
  }
}
