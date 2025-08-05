import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(100),
          side: BorderSide(
            color: Colors.green,
            width: 4,
          ),
        ),
        child: Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  _topBuild(),
                  _card(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _topBuild() {
  return Container(
    height: 280,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Welcome,",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ],
          ),
          Text(
            "Alex Sison",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _card() {
  return SizedBox(
    height: 350,
    child: Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 45,
          child: Container(
            height: 180,
            width: 320,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 24, 53, 25),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  spreadRadius: 10,
                  color: Colors.grey.shade600.withOpacity(0.5),
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "lib/assets/chip.png",
                    height: 50,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Total savings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 0.1,
                    ),
                  ),
                  Text(
                    "\$8,140.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green,
      shape: CircularNotchedRectangle(),
      notchMargin: 18,
    );
  }
}
