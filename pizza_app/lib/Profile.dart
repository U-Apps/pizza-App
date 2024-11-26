import 'package:flutter/material.dart';
import 'package:pizza_app/models/accountDate.dart';

class AccountPage extends StatefulWidget {
  AccountPage({super.key});
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String userName = CurrentUsersInsys[0].userName;
  String userEmail = CurrentUsersInsys[0].Email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
           padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                
//
Container(
  width:420,
  height: 145,
 
  padding: EdgeInsets.all(15),
  decoration: BoxDecoration(
  
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  child: Column(children: [
     
                   CircleAvatar(
                    child:Image.asset('assets/images/avt.jpg',width: 60,height: 60,)
                     ,
                   )
,
                SizedBox(height: 3),
                Text(
                  userName,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  userEmail,
                  style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 236, 232, 232)),
                ),

  ],)
),

//


              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                AccountOption(
                    title: 'Delete Account', icon: Icons.delete, event: 'del'),
                AccountOption(
                  title: 'Log Out',
                  icon: Icons.logout,
                  event: 'logout',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final String event;

  const AccountOption(
      {required this.title, required this.icon, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE6361D),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
        onTap: () {
          if (event == 'del') {
            accountData ac = accountData(
                userName: CurrentUsersInsys[0].userName,
                passWord: CurrentUsersInsys[0].passWord,
                Email: CurrentUsersInsys[0].Email);

            users.removeWhere((ac) => ac.userName == ac.userName);

            CurrentUsersInsys.removeAt(0);

            Navigator.pushNamed(context, 'login');
          }
          if (event == 'logout') {
            Navigator.pushNamed(context, 'login');
          }
        },
      ),
    );
  }
}
