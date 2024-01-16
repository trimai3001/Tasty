import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mai Minh Tri",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Chi nhanh trung tam", textAlign: TextAlign.left)
                    ],
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart_outlined),
              title: const Text('Tổng quan'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.trolley),
              title: const Text('Hàng hoá'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.warehouse),
              title: const Text('Kiểm kho'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt),
              title: const Text('Hoá đơn'),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.clean_hands),
              title: const Text('Trả hàng'),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            // Add more ListTile widgets for additional options...
            // Example:
            ListTile(
              leading: const Icon(Icons.fire_truck),
              title: const Text('Nhập hàng'),
              selected: _selectedIndex == 5,
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Trả hàng nhập'),
              selected: _selectedIndex == 6,
              onTap: () {
                _onItemTapped(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Chuyển hàng'),
              selected: _selectedIndex == 7,
              onTap: () {
                _onItemTapped(7);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Xuất huỷ'),
              selected: _selectedIndex == 8,
              onTap: () {
                _onItemTapped(8);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Khách hàng'),
              selected: _selectedIndex == 9,
              onTap: () {
                _onItemTapped(9);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Nhà cung cấp'),
              selected: _selectedIndex == 10,
              onTap: () {
                _onItemTapped(10);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Sổ quỹ'),
              selected: _selectedIndex == 11,
              onTap: () {
                _onItemTapped(11);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Phiếu bàn giao ca'),
              selected: _selectedIndex == 12,
              onTap: () {
                _onItemTapped(12);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.summarize),
              title: const Text('Báo cáo'),
              selected: _selectedIndex == 13,
              onTap: () {
                _onItemTapped(13);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text('Bán hàng'),
              selected: _selectedIndex == 14,
              onTap: () {
                _onItemTapped(14);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_bar),
              title: const Text('Phòng/bàn'),
              selected: _selectedIndex == 15,
              onTap: () {
                _onItemTapped(15);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_print_shop),
              title: const Text('Máy in'),
              selected: _selectedIndex == 16,
              onTap: () {
                _onItemTapped(16);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title:
                  const Text('Đăng xuất', style: TextStyle(color: Colors.red)),
              selected: _selectedIndex == 17,
              onTap: () {
                _onItemTapped(17);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
