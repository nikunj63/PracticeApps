import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FormUI extends StatefulWidget {
  const FormUI({super.key});

  @override
  State<FormUI> createState() => _FormUIState();
}

class _FormUIState extends State<FormUI> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Center(
          child: Text("MOMENT TREASURED",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Registarion Form",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
            Text("Please Fill out this form to register",
            style: TextStyle(
              fontSize: 12
            ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                
              ),
            ),
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 8
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                
              ),
            ),
            Column(
              children: [
                TextField(
                  controller: emailController,
                decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 8
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),

                ),
              ),
              ],

            ),

            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                
              ),
            ),
            Column(
              children: [
                TextField(
                  controller: phoneController,
                decoration: InputDecoration(
                  hintText: "(000) 000-000",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 8
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),

                ),
              ),
              ],

            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Date of Birth",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                
              ),
            ),
            Column(
              children: [
                TextField(
                  controller: birthController,
                decoration: InputDecoration(
                  hintText: "MM-DD-YYYY",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 8
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),

                ),
              ),
              ],

            ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (){
              Map<String , String> dataToSave = {
                "Name": nameController.text,
                "email": emailController.text,
                "Phone Number": phoneController.text,
                "Date Of Birth": birthController.text,
              };
              FirebaseFirestore.instance.collection('Form_Details').add(
                dataToSave
              );
            }, 
            child: Text("Save")
            ),
            

          ],
          
        ),
      ),
    );
  }
}