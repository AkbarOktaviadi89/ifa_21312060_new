import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ifa_21312060/app/controllers/auth_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return DashboardAdmin();
  }
}

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({super.key});

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {
  final cAuth = Get.find<AuthController>();
  int _index = 0;
  List<Map> _fragment = [
    {'title': 'Dashboard', 'view': 'Dashboard'},
    {'title': 'Data Mahasiswa', 'view': 'Mahasiswa'},
    {'title': 'Data Dosen', 'view': 'Dosen'},
    {'title': 'Data Pegawai', 'view': 'Pegawai'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 128, 255),
        titleSpacing: 0,
        title: Text(_fragment[_index]['title']),
      ),
      // body: _fragment[_index]['view'],
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 140, 255),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 80,
                    color: Colors.white,
                  ),
                  Text(
                    "Akbar Oktaviadi",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Admin',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
          ListTile(
            onTap: () {
              setState(() => _index = 0);
              Get.back();
            },
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Color.fromARGB(255, 0, 140, 255),
            textColor: Color.fromARGB(255, 0, 140, 255),
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 1);
              Get.back();
            },
            leading: Icon(Icons.people),
            title: Text('Data Mahasiswa'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Color.fromARGB(255, 0, 140, 255),
            textColor: Color.fromARGB(255, 0, 140, 255),
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 2);
              Get.back();
            },
            leading: Icon(Icons.people),
            title: Text('Data Dosen'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Color.fromARGB(255, 0, 140, 255),
            textColor: Color.fromARGB(255, 0, 140, 255),
          ),
          ListTile(
            onTap: () {
              setState(() => _index = 3);
              Get.back();
            },
            leading: Icon(Icons.people),
            title: Text('Data Pegawai'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Color.fromARGB(255, 0, 140, 255),
            textColor: Color.fromARGB(255, 0, 140, 255),
          ),
          ListTile(
            onTap: () {
              Get.back();
              cAuth.logout();
            },
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            trailing: Icon(Icons.navigate_next),
            iconColor: Color.fromARGB(255, 0, 140, 255),
            textColor: Color.fromARGB(255, 0, 140, 255),
          ),
        ],
      ),
    );
  }
}
