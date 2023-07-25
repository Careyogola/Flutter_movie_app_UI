import 'package:flutter/material.dart';
import 'package:pract_project/model/movie_model.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //creation of dummy list of movies

  // ignore: non_constant_identifier_names
  static List<MovieModel> main_movies_list = [
    MovieModel("The Shawshank Redemption", 1994, 9.4, "VW2.jpg"),
    MovieModel("The Old Man", 2023, 9.0, "VW3.jpg"),
    MovieModel("Banshee", 2010, 9.7, "VW2.jpg"),
    MovieModel("The Terminal List", 1994, 9.5, "VW2.jpg"),
    MovieModel(
      "Prison Break",
      1998,
      9.1,
      "VW3.jpg",
    ),
    MovieModel(
      "Matyres",
      2005,
      6.9,
      "NICE.jpg",
    ),
    MovieModel(
      "Hitmans Bodyguard",
      2018,
      7.0,
      "VW3.jpg",
    ),
    MovieModel("Fast and Furious", 2001, 10.0, "VW3.jpg"),
    MovieModel("The Shawshank Redemption", 1999, 4.5, "VW3.jpg"),
    // creating list that we should display and filter
  ];
  // ignore: non_constant_identifier_names
  List<MovieModel> display_list = List.from(main_movies_list);
  void updateList(String value) {
    //this is the function that will filter out our list

    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 188, 182, 209),
      //   elevation: 0.0,
      // ),
      //body code of the application goes here
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search for a movie",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //textfiled for seaarch bar code
            TextField(
              onChanged: (value) => updateList(value),
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 236, 236, 228),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                hintText: "eg:The Dark Knight",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (BuildContext context, int index) => ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  title: Text(
                    display_list[index].movie_title!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${display_list[index].movie_release_year!}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    "${display_list[index].rating}",
                    style: const TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  leading: Image.asset(
                    display_list[index].movie_poster_url!,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
