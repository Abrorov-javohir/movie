import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie',
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey,
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Search by title, genre, or actors',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Recent Searches",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Chip(
                label: Text(
                  'Marvel',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.green,
                avatar: Icon(Icons.watch_later, color: Colors.white),
              ),
              SizedBox(width: 8),
              Chip(
                label: Text(
                  'Captain America',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.green,
                avatar: Icon(Icons.watch_later, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Chip(
                label: Text(
                  'Captain Marvel',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.green,
                avatar: Icon(Icons.watch_later, color: Colors.white),
              ),
              SizedBox(width: 8),
              Chip(
                label: Text(
                  'Thor',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.green,
                avatar: Icon(Icons.watch_later, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Popular",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  "https://cdn.marvel.com/content/1x/thorloveandthunder_lob_crd_04.jpg",
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  "https://lumiere-a.akamaihd.net/v1/images/p_avengersinfinitywar_19871_cb171514.jpeg?region=0,0,540,810&width=480",
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  "https://johnstonsunrise.net/uploads/original/20220510-190442-movie%20-%20Doctor%20Strange2.jpg",
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  "https://cdn.marvel.com/content/1x/eternals_lob_crd_06.jpg",
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Recommentations for you",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg",
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  "https://13thdimension.com/wp-content/uploads/2018/03/D1nkY7UVAAUs7KN-580x859.jpg",
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  "https://cdn.marvel.com/content/1x/blackwidow_lob_crd_06.jpg",
                  width: 100,
                  height: 100,
                ),
                Image.network(
                  "https://lumiere-a.akamaihd.net/v1/images/image_204c6ddf.jpeg?region=0,0,540,810&width=480",
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.grey),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_rounded, color: Colors.grey),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Favorites()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Downloads()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Comedy,films,cartoons,stories,series',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text("Results for 'Comedy'"),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  children: [
                    Image.network(
                      "https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://13thdimension.com/wp-content/uploads/2018/03/D1nkY7UVAAUs7KN-580x859.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://cdn.marvel.com/content/1x/blackwidow_lob_crd_06.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://lumiere-a.akamaihd.net/v1/images/image_204c6ddf.jpeg?region=0,0,540,810&width=480",
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      "https://hips.hearstapps.com/hmg-prod/images/spider-man-homecoming-1642713844.jpeg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://m.media-amazon.com/images/M/MV5BODA5MTY0OWUtNjdlOC00NDI5LWE3NjYtNDM4MDI2MzE4OWUxXkEyXkFqcGdeQXVyOTAzODkzMjI@._V1_.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://thedeclarationatcoloniahigh.com/wp-content/uploads/2022/02/The_Amazing_Spider-Man_theatrical_poster.jpeg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      "https://m.media-amazon.com/images/M/MV5BMjE5MzcyNjk1M15BMl5BanBnXkFtZTcwMjQ4MjcxOQ@@._V1_.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_FMjpg_UX1000_.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://m.media-amazon.com/images/I/71yx6XzPPUL._AC_UF1000,1000_QL80_DpWeblab_.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/thumb/6/66/Transformers07.jpg/220px-Transformers07.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlcrVVH-MY89825GVkwxEhpK6zjt9P4QUhxRGV5yqHvbMpPY6Ibgs7Bt5vKobpRTi0Ofc&usqp=CAUg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://th.bing.com/th/id/OIP._dlFR4lyTMP3SJywCKSfmQHaLj?pid=ImgDet&rs=1",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/0/0f/Transformers_Age_of_Extinction_poster.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      "https://static.javatpoint.com/list/images/list-of-marvel-movies-in-order32.png",
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Downloads()),
                        );
                      },
                      child: Image.network(
                        "https://static.wikia.nocookie.net/marvelmovies/images/0/0a/Morbius_April_1_Poster.jpg/revision/latest?cb=20220410040631",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.network(
                        "https://s3.amazonaws.com/static.rogerebert.com/uploads/collection/primary_image/the-history-of-marvel-movies/hero_the-history-of-marvel-movies.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.network(
                        "https://dailyevergreen.com/wp-content/uploads/2023/02/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_-608x900.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.network(
                        "https://sm.mashable.com/t/mashable_in/photo/default/image-11_1guz.720.jpg",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.grey),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_rounded, color: Colors.grey),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Favorites()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Downloads()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
      ),
    );
  }
}

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Search Page'),
      ),
    );
  }
}

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movie Details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "List Movie",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Downloading",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://m.media-amazon.com/images/M/MV5BZTNiNDA4NmMtNTExNi00YmViLWJkMDAtMDAxNmRjY2I2NDVjXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg',
                      height: 200,
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transformers: Rise of the Beast',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Transformers',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Transformers 1: 720K / s 250MB / 1.5GB',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.download),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.details),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://m.media-amazon.com/images/M/MV5BOTZjYWJmMTItZTA0NC00MTc4LWJlZGEtZWNlN2RiMzc3NTM1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg',
                      height: 200,
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Morbius',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Marvel Studio',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Morbius 1: 720K / s 250MB / 1.5GB',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.download),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.details),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Search Page'),
      ),
    );
  }
}
