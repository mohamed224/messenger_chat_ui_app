import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatAppUI(title: 'Flutter Demo Home Page'),
    );
  }
}

class ChatAppUI extends StatefulWidget {
  ChatAppUI({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChatAppUIState createState() => _ChatAppUIState();
}

class _ChatAppUIState extends State<ChatAppUI> {
      int _currentIndex =0;
  List<String> _avatarUrl = [
    "https://images.unsplash.com/photo-1573890990305-0ab6a7195ab6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1545130368-4c55e2418062?ixlib=rb-1.2.1&auto=format&fit=crop&w=926&q=80",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1470441623172-c47235e287ee?ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80",
    "https://images.unsplash.com/photo-1458662236860-b721a6735660?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1534308143481-c55f00be8bd7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1188&q=80",
    "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1535201344891-231e85e83c8a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
  ];
  Widget avatarWidget(String urlImg, double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(urlImg),
              alignment: Alignment.topCenter)),
    );
  }

  Widget storyButton(String urlImg, double radius) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: radius,
          height: radius,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(urlImg),
                  alignment: Alignment.topCenter)),
        ),
      ),
    );
  }

  Widget listItem(String urlImg, String userName, String message, String hour) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
          child: Row(
            children: [
              avatarWidget(urlImg, 60.0),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )
                ],
              )),
              Text(
                hour,
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      avatarWidget(_avatarUrl[0], 30.0),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Text(
                          "Discussions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 35.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey[200]),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 35.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.grey[200]),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                          size: 30,
                        ),
                        hintText: 'Rechercher',
                        contentPadding: const EdgeInsets.only(left: 20.0),
                        filled: true,
                        fillColor: Colors.grey[280],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide.none)),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                      width: double.infinity,
                      height: 50.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            elevation: 0.0,
                            shape: CircleBorder(),
                            color: Colors.grey[200],
                            child: Icon(FontAwesomeIcons.video),
                          ),
                          storyButton(_avatarUrl[1], 60.0),
                          storyButton(_avatarUrl[2], 60.0),
                          storyButton(_avatarUrl[3], 60.0),
                          storyButton(_avatarUrl[4], 60.0),
                          storyButton(_avatarUrl[5], 60.0),
                          storyButton(_avatarUrl[6], 60.0),
                        ],
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                      child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      listItem(_avatarUrl[7], "Mohamed", "Bonjour", "09:15"),
                      listItem(_avatarUrl[8], "Massim", "Quoi de neuf", "10:35"),
                      listItem(_avatarUrl[9], "Aicha", "Tu es là", "20:00"),
                      listItem(_avatarUrl[5], "Mariam", "Coucou", "17:25"),
                      listItem(_avatarUrl[6], "Ali", "Aurevoir", "23:55"),
                      listItem(_avatarUrl[1], "Amine", "Bienvenu", "08:00"),
                    ],
                  ))
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.black,
        onTap: (value){
          setState(() {
            _currentIndex = value;
            
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: 50,
                child: Stack(
                  children: [
                    Icon(FontAwesomeIcons.solidComment),
                    Positioned(
                      right:18,
                     
                      child: Container(
                        alignment: Alignment.center,
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color: Colors.red),
                            child: Text("2",style: TextStyle(fontSize: 10,color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
              title: Text("Discussions")),
          BottomNavigationBarItem(
              icon: Container(
                width: 50,
                child: Stack(
                  children: [
                    Icon(FontAwesomeIcons.userFriends),
                    Positioned(
                      right:2,
                      bottom: 10.5,
                      child: Container(
                        alignment: Alignment.center,
                        width: 25,
                        height: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.5),
                            color: Colors.green[100]),
                            child: Text("99+",style: TextStyle(fontSize: 10,color: Colors.green[600]),),
                      ),
                    )
                  ],
                ),
              ), title: Text("Contacts"))
        ],
      ),
    );
  }
}
