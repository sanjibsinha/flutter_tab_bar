import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'all_pages.dart';

/// adding transparent appbar
/// modifying build icons

class DashBoardHome extends StatelessWidget {
  const DashBoardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[400],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.grey,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 20,
          titleSpacing: 80,
          leading: const Icon(Icons.menu),
          title: const Text(
            'Let\'s Go!',
            textAlign: TextAlign.center,
          ),
          actions: [
            buildIcons(
              const Icon(Icons.add_a_photo),
            ),
            buildIcons(
              const Icon(
                Icons.notification_add,
              ),
            ),
            buildIcons(
              const Icon(
                Icons.settings,
              ),
            ),
            buildIcons(
              const Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.green,
            indicatorWeight: 10,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.panorama_fish_eye,
                ),
                text: 'Log in',
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                ),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(
                  Icons.local_activity,
                ),
                text: 'Location',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            newPage('Home'),
            newPage('Log in'),
            newPage('Settings'),
            newPage('Location'),
          ],
        ),
      ),
    );
  }

  IconButton buildIcons(Icon icon) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }

  Widget newPage(String text) => Center(
        child: Text(
          text,
          style: GoogleFonts.salsa(
            fontSize: 60.00,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
      );
}
