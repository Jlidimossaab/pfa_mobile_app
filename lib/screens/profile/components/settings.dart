import 'package:flutter/material.dart';
import 'notifications.dart';
import 'profile_menu.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.green,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16,top: 25,right: 16),
        child: ListView(
          children: [
            const Text("Settings", style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500,
            ),),
            const SizedBox(height: 40,),
            Row(
              children: const [
                Icon(
                  Icons.person, color: Colors.green,
                ),
                SizedBox(width: 8,),
                Text("Account",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,),
                ),
              ],
            ),
            const Divider(
                height: 15,thickness: 2
            ),
            const SizedBox(
              height: 10
              ,),
            buildAccountPasswordRow(context),
            buildAccountUsernameRow(context),
            buildAccountEmailRow(context),
            buildAccountMajorRow(context),
            buildAccountEducationRow(context),
            buildAccountLanguageRow(context),
            const SizedBox(height: 40,),
            Row(
              children: const [
                Icon(
                  Icons.volume_up_outlined, color: Colors.green,
                ),
                SizedBox(width: 8,),
                Text("Notifications",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold,),
                ),
              ],
            ),
            const Divider(
                height: 15,thickness: 2
            ),
            const SizedBox(
              height: 10
              ,),
            buildAccountNotificationRow(context),
            Center(
              child: OutlineButton(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  onPressed: (){},
                  child: const Text(
                    "SIGN OUT", style: TextStyle(
                    fontSize: 16, letterSpacing: 2.2, color: Colors.black,
                  ),)
              ),
            ),
          ],
        ),
      ),
    );
  }
  GestureDetector buildAccountPasswordRow(BuildContext context){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Change Password"),
            content: Column(
              mainAxisSize: MainAxisSize.min ,
              children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'current password',
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'New Password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Confirm password',
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Close"),
              ),
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Edit"),
              ),
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Change Password" ,style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey,
            ),
          ],),
      ),
    );
  }
  GestureDetector buildAccountUsernameRow(BuildContext context){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Change Username"),
            content: Column(
              mainAxisSize: MainAxisSize.min ,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'New Username',
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Close"),
              ),
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Edit"),
              ),
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Change Username" ,style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey,
            ),
          ],),
      ),
    );
  }

  GestureDetector buildAccountEmailRow(BuildContext context){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Change Email"),
            content: Column(
              mainAxisSize: MainAxisSize.min ,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'New Email',
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Close"),
              ),
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Edit"),
              ),
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Change Email" ,style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey,
            ),
          ],),
      ),
    );
  }
  GestureDetector buildAccountMajorRow(BuildContext context){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Change Major"),
            content: Column(
              mainAxisSize: MainAxisSize.min ,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'New Major',
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Close"),
              ),
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Edit"),
              ),
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Change Major" ,style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey,
            ),
          ],),
      ),
    );
  }
  GestureDetector buildAccountEducationRow(BuildContext context){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Change Education"),
            content: Column(
              mainAxisSize: MainAxisSize.min ,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'New Education',
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Close"),
              ),
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Edit"),
              ),
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Change Education" ,style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey,
            ),
          ],),
      ),
    );
  }
  // Initial Selected Value
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'Frensh',
    'Arabic',
  ];
  GestureDetector buildAccountLanguageRow(BuildContext context){
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Change Education"),
            content: Column(
              mainAxisSize: MainAxisSize.min ,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    children: [
                    DropdownButton(

                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                    ]
                  ),
                ),
              ]
            ),
            actions: [
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Close"),
              ),
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              },
                child: const Text("Edit"),
              ),
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Change Language" ,style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Colors.grey,
            ),
          ],),
      ),
    );
  }
  TextButton buildAccountNotificationRow(BuildContext context){
    return TextButton(
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Notifications() ),); },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Message Received" ,style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[600],
          ),
          ),
          const Icon(Icons.arrow_forward_ios,color: Colors.grey,
          ),
        ],),
    );
  }
}
