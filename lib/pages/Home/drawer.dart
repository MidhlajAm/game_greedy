import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          height: Get.height,
          width: Get.width * 0.6,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2),
            child: Column(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      child: Text(
                        'MA',
                        style: TextStyle(fontFamily: 'bpop', fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 245,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(203, 195, 227, 1),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                Flexible(
                                    child: Text(
                                  ' Midhlaj Am',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'bpop'),
                                )),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email_rounded,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                Flexible(
                                    child: Text(
                                  ' midhlaj.Am786@gmail.com',
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'bpop'),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DrawerTile(
                  title: 'My Profile',
                  icon: Icons.person,
                ),
                DrawerTile(
                  title: 'Wallet balance €81.00',
                  icon: Icons.wallet_rounded,
                ),
                DrawerTile(
                  title: 'Settings',
                  icon: Icons.settings,
                ),
                DrawerTile(
                  title: 'Help',
                  icon: Icons.help_outline_rounded,
                ),
                DrawerTile(
                  title: 'Logout',
                  icon: Icons.logout_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerTile({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: 245,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(203, 195, 227, 1),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 13, fontFamily: 'bpop'),
          ),
        ),
      ),
    );
  }
}
