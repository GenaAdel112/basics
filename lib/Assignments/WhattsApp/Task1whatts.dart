import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF168C4B),
        leadingWidth:30,
        leading:IconButton(
          icon:Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          onPressed: (){},
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/Rectangle 2.png'),
        ),
            SizedBox(width: 10,),
            Text('John Safwat',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.videocam,color: Colors.white,),
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.call,color: Colors.white,),
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.more_vert,color: Colors.white,),
            onPressed: (){},
          ),
    ],
      ),
      body:  SafeArea(
        child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF181818),
        image: DecorationImage(
            image: AssetImage('assets/images/whatts_image.png'),
          fit: BoxFit.cover),
      ),
       child:  Expanded(
        child: Column(
          children: [
            SizedBox(height: 10),
            ChatBubble(text: 'Hello !', isSender: false),
             SizedBox(height: 10),
             ChatBubble(text: 'Hello !', isSender: true),
             SizedBox(height: 10),
             ChatBubble(
              text: 'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
              isSender: false,
            ),
             SizedBox(height: 1),
            ChatBubble(
              text: 'what a Great Content Tp learn Flutter',
              isSender: false,
              imagePath: 'assets/images/Route.png',
            ),
             SizedBox(height: 10),
             ChatBubble(text: 'what a Great Content Tp learn Flutter', isSender: true),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style:TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Type a Message ...',
                        hintStyle: TextStyle(color: Colors.white70, fontSize: 14),
                        prefixIcon:Icon(Icons.camera_alt_outlined, color: Colors.white),
                        suffixIcon: Icon(Icons.send_sharp, color: Colors.white),
                        contentPadding:EdgeInsets.symmetric(vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color:Color(0xFF168C4B), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Color(0xFF168C4B), width: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Color(0xFF168C4B),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ],

              ),
            ),
          ]
        ),
        ),
        ),
        ),

      );

  }

}
class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final String? imagePath;

  const ChatBubble({
    required this.text,
    required this.isSender,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(8),
        padding:EdgeInsets.all(10),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          color: isSender ? Color(0xFF232D36) :  Color(0xFF168C4B),
          borderRadius: BorderRadius.only(
            topLeft: isSender ?  Radius.circular(16) : Radius.zero,
            topRight: isSender ? Radius.zero :  Radius.circular(16),
            bottomLeft:  Radius.circular(16),
            bottomRight: Radius.circular(16),
            ),
        ),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          text, style: TextStyle(
                color: Colors.white, fontSize: 16, height: 1.3,
              ), ),
            if (imagePath != null) ...[
           SizedBox(height: 10),
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(imagePath!, width: double.infinity,fit: BoxFit.cover),
      ),

          ],

    ],
      ),
    ),
    );
  }
}