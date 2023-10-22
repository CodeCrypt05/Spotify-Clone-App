import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spotify_clone_app/presentation/widgets/searched_album_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 18, right: 18),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.06,
              ),
              buildHeader(),
              buildMusicPodcast(),
              buildSearchedAlbum(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("#1DB954"),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'V',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Good evening',
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -1),
                  )),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_time_outlined),
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildMusicPodcast() {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      width: double.infinity,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 80, // Set the desired width
              height: 34, // Set the desired height
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the radius as needed
                color: HexColor("#2A2A2A"),
              ),
              child: Center(
                child: Text(
                  'Music',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 160, // Set the desired width
              height: 34, // Set the desired height
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the radius as needed
                color: HexColor("#2A2A2A"),
              ),
              child: Center(
                child: Text(
                  'Podcasts & Shows',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearchedAlbum() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        mainAxisExtent: 60,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return SearchedWidgetAlbum();
      },
    );
  }
}
