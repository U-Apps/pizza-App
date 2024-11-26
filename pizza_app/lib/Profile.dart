import 'package:flutter/material.dart';
import 'package:pizza_app/models/accountDate.dart';

class AccountPage extends StatefulWidget {
  AccountPage({super.key});
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String userName =
      CurrentUsersInsys.isNotEmpty ? CurrentUsersInsys[0].userName : 'Unknown';
  String userEmail =
      CurrentUsersInsys.isNotEmpty ? CurrentUsersInsys[0].Email : 'Unknown';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  Container(
                    width: 420,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(146, 207, 207, 207)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/avt.jpg',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10), // تأكد من وجود مسافة كافية
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5), // إضافة مسافة بين الاسم والإيميل
                        Text(
                          userEmail,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // إضافة مسافة بين المكونات
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  AccountOption(
                    title: 'Delete Account',
                    icon: Icons.delete,
                    event: 'del',
                  ),
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
      ),
    );
  }
}

class AccountOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final String event;

  const AccountOption({
    required this.title,
    required this.icon,
    required this.event,
  });

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
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
        onTap: () {
          if (event == 'del') {
            accountData ac = accountData(
              userName: CurrentUsersInsys[0].userName,
              passWord: CurrentUsersInsys[0].passWord,
              Email: CurrentUsersInsys[0].Email,
            );

            users.removeWhere((user) => user.userName == ac.userName);
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
