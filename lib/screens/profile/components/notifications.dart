import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: listView(),
    );
  }

  PreferredSizeWidget appBar(){
    return AppBar(
      title: const Text('Notifications Screen '),
    );
  }

  Widget listView(){
    return ListView.separated(itemBuilder: (context, index){
      return listViewItem(index);
    },separatorBuilder: (context, index) => const Divider(height: 0)
    ,itemCount: 5,
    );
  }
  Widget listViewItem(int index){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  message(index),
                  timeAndDate(index),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget message(int index){
    double textSize= 18;
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text:'Message',
          style: TextStyle(
            fontSize: textSize,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          children: const [
            TextSpan(
              text: 'Message Description',
              style: TextStyle(fontWeight: FontWeight.w400,)
            ),
          ]
        ),
      ),
    );
  }
  Widget timeAndDate(int index){
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('23-01-2021',style: TextStyle(fontSize: 10,),),
          Text('07:10 am',style: TextStyle(fontSize: 10,),),
        ],
      ),
    );
  }
  Widget prefixIcon(){
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(Icons.notifications,size:25,color: Colors.grey.shade700,),
    );
  }
}
