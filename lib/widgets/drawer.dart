import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageurl="https://scontent.flhe6-1.fna.fbcdn.net/v/t39.30808-1/430234533_411762394672082_5006779656779206727_n.jpg?stp=c0.0.320.320a_dst-jpg_p320x320&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH9IY1zm38F8IC0xXbkvNfMzjzKf5-LiljOPMp_n4uKWOdqUpH2OokPMqCsieNvIGTtbEWBm3pnYZFCkrmGDFOf&_nc_ohc=tu2czc_EQT8AX9qBE1x&_nc_ht=scontent.flhe6-1.fna&oh=00_AfDWtKaZj-U0um5ZF45gET42k4po1H9S507EIg4M9MhIwA&oe=66095B0E";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
        
                accountName: Text("Hamid"),
                accountEmail: Text("hamid@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage(imageurl) ,),
              )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,

                ),
                
                title: Text("Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),

            ),
             
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,

                ),
                
                title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),

            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,

                ),
                
                title: Text("Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),),

            ),
          ],         
        ),
      ),
    );
  }
}