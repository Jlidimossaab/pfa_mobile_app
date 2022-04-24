import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_pic.dart';
class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar : AppBar(
        title:  const Text("My Account ", style : TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.blueGrey,
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 20),
          const SizedBox(
            height: 115,
            width: 115,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Profile Image.png"),
              //backgroundImage: _imageFile == null
              //? const AssetImage("assets/images/Profile Image.png")
              //: FileImage(File(_imageFile.path)) as ImageProvider,
            ),
          ),
          const SizedBox(height: 30),
          const Divider(thickness: 0.8),
          textContent("Username","JLIDI Mossaab"),
          const Divider(thickness: 0.8),
          textContent("Major","ENSIT"),
          const Divider(thickness: 0.8),
          textContent("Email","jlidimossaab111@gmail.com"),
          const Divider(thickness: 0.8),
          textContent("Education","Computer Science Ingineering"),
          const Divider(thickness: 0.8),
        ],
      ),
      );
  }
  Padding textContent(String title,String text){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,10,0,10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 10.0),
        Text(
            text,
            style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
          ),
        ],
      )
    );
  }
}
