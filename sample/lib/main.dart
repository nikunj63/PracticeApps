import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample/firebase_options.dart';

void main ()async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController nameConroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sample"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
               controller: nameConroller,
              ),
              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){

                  Map<String , String> dataToSave={
                    'name': nameConroller.text
                  };
                  CollectionReference collRef = FirebaseFirestore.instance.collection(
                    'text'
                  );
                  collRef.add(
                      dataToSave
                    );
                }, 
                child: Text("Save")
                )
            ],
          ),
        ),
      ),
    );
  }
}