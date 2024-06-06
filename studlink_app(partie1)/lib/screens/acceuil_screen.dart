import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'STUDLINK',
          style: TextStyle(
              color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.add_circle_outline, color: Colors.black),
            onSelected: (String result) {
              switch (result) {
                case 'Publication':
                  // Action for Publication
                  break;
                case 'Story':
                  // Action for Story
                  break;
                case 'Direct':
                  // Action for Direct
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Publication',
                child: ListTile(
                  leading: Icon(Icons.post_add),
                  title: Text('Publication'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Story',
                child: ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Story'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'Direct',
                child: ListTile(
                  leading: Icon(Icons.camera_alt),
                  title: Text('Direct'),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildStorySection(context),
          Divider(),
          _buildPostSection(),
          _buildPostSection2(),
          _buildPostSection3(),
          _buildPostSection4(),
          _buildPostSection5(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            icon:
                Icon(Icons.home, color: const Color.fromARGB(255, 1, 94, 255)),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library,
                color: const Color.fromARGB(255, 1, 94, 255)),
            label: 'Vidéo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,
                color: const Color.fromARGB(255, 1, 94, 255)),
            label: 'Ami(e)s',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.store, color: const Color.fromARGB(255, 1, 94, 255)),
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: const Color.fromARGB(255, 1, 94, 255)),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.menu, color: const Color.fromARGB(255, 1, 94, 255)),
            label: 'Menu',
          ),
        ],
      ),
    );
  }

  Widget _buildStorySection(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildStoryTile(context, 'Créer une story', Icons.add),
          _buildStoryTile(
              context, 'Bouboul', null, 'assets/images/bouboul.jpg'),
          _buildStoryTile(context, 'Mickey', null, 'assets/images/mickey.jpg'),
          _buildStoryTile(
              context, 'Coco Jojo', null, 'assets/images/coco_jojo.jpg'),
          _buildStoryTile(context, 'Dwely', null, 'assets/images/dwely.jpg'),
        ],
      ),
    );
  }

  Widget _buildStoryTile(BuildContext context, String label, IconData? icon,
      [String? imageAsset]) {
    return GestureDetector(
      onTap: () {
        if (imageAsset != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EcranImageAgrandie(imagePath: imageAsset),
            ),
          );
        }
      },
      child: Container(
        width: 80,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(icon, color: Color.fromARGB(255, 10, 67, 239)),
              )
            else if (imageAsset != null)
              CircleAvatar(
                backgroundImage: AssetImage(imageAsset),
              ),
            SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPostSection() {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profil_2.jpg'),
            ),
            title: Text('20_June'),
            subtitle: Text('2 h'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "La vie des étudiants de ''Collège De Paris Supérieur'' est dynamique et enrichissante 📚✨. Entre les cours et les sorties culturelles, chaque journée est une nouvelle aventure !",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Image.asset("assets/images/A_Dd.jpg"),
        ],
      ),
    );
  }

  Widget _buildPostSection2() {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profil_1.jpg'),
            ),
            title: Text('B2-B-IT'),
            subtitle: Text('2 h'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "La vie des étudiants de ''Collège De Paris Supérieur'' est dynamique et enrichissante 📚✨. Entre les cours et les sorties culturelles, chaque journée est une nouvelle aventure !",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Image.asset("assets/images/art_cu.jpg"),
        ],
      ),
    );
  }

  Widget _buildPostSection3() {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profil_1.jpg'),
            ),
            title: Text('B2-B-IT'),
            subtitle: Text('2 h'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "La vie des étudiants de ''Collège De Paris Supérieur'' est dynamique et enrichissante 📚✨. Entre les cours et les sorties culturelles, chaque journée est une nouvelle aventure !",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Image.asset("assets/images/IT_B.jpg"),
        ],
      ),
    );
  }

  Widget _buildPostSection4() {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profil_2.jpg'),
            ),
            title: Text('20_June'),
            subtitle: Text('2 h'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "La vie des étudiants de ''Collège De Paris Supérieur'' est dynamique et enrichissante 📚✨. Entre les cours et les sorties culturelles, chaque journée est une nouvelle aventure !",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Image.asset("assets/images/art_cu2.jpg"),
        ],
      ),
    );
  }

  Widget _buildPostSection5() {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profil_2.jpg'),
            ),
            title: Text('20_June'),
            subtitle: Text('2 h'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "La vie des étudiants de ''Collège De Paris Supérieur'' est dynamique et enrichissante 📚✨. Entre les cours et les sorties culturelles, chaque journée est une nouvelle aventure !",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Image.asset("assets/images/couloir.jpg"),
        ],
      ),
    );
  }
}

class EcranImageAgrandie extends StatelessWidget {
  final String imagePath;

  EcranImageAgrandie({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Agrandie'),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
