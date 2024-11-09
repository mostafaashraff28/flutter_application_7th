import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  final String apikey = '49e0adad5d9e826584b2228d6ce7e7d3';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0OWUwYWRhZDVkOWU4MjY1ODRiMjIyOGQ2Y2U3ZTdkMyIsIm5iZiI6MTczMTA5NTcyNC45NjczMTkzLCJzdWIiOiI2NTAyZWNhMGVmZWE3YTAwYzM5N2Y1OTMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.VdijGOq3wwqojo78UdBfwNw2JJmgLOdGdGotfTCxWZk';

  @override
  void initState() {
    loadmovies();
    super.initState();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();

    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.pushNamed(context, '/ToWatch'); },
        backgroundColor: const Color.fromARGB(255, 217, 0, 255), // Customize button color
        child: Icon(Icons.watch_later_outlined, color: Colors.white),
      ),
    
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Trending Movies
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Trending Movies',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "myfont"
                ),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingmovies.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        trendingmovies[index]['poster_path'] != null
                            ? Image.network(
                                'https://image.tmdb.org/t/p/w500${trendingmovies[index]['poster_path']}',
                                width: 140,
                                height: 180,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                width: 140,
                                height: 180,
                                color: Colors.grey,
                                child: Icon(Icons.image, size: 40),
                              ),
                        SizedBox(height: 8),
                        Text(
                          trendingmovies[index]['title'] ?? 'No title available',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                      
                      ],
                    ),
                  );
                },
              ),
            ),

            // Top Rated Movies
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Top Rated Movies',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "myfont"
                ),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topratedmovies.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        topratedmovies[index]['poster_path'] != null
                            ? Image.network(
                                'https://image.tmdb.org/t/p/w500${topratedmovies[index]['poster_path']}',
                                width: 140,
                                height: 180,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                width: 140,
                                height: 180,
                                color: Colors.grey,
                                child: Icon(Icons.image, size: 40),
                              ),
                        SizedBox(height: 8),
                        Text(
                          topratedmovies[index]['title'] ?? 'No title available',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rating: ${topratedmovies[index]['vote_average']}',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Popular TV Shows
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular TV Shows',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "myfont"
                ),
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tv.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tv[index]['poster_path'] != null
                            ? Image.network(
                                'https://image.tmdb.org/t/p/w500${tv[index]['poster_path']}',
                                width: 140,
                                height: 180,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                width: 140,
                                height: 180,
                                color: Colors.grey,
                                child: Icon(Icons.image, size: 40),
                              ),
                        SizedBox(height: 8),
                        Text(
                          tv[index]['name'] ?? 'No title available',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                      
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
