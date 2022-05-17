//Faire fonction qui prend le string et qui ressort l'ID Deezer mais ressort le titre, artiste, img, preview=> (String)
import 'dart:convert';

import 'package:http/http.dart';
import 'package:tempomylife_web/constants.dart';

class APIDeezer {
  APIDeezer(
      this.idDeezer,
      this.genreMusique,
      this.artisteMusique,
      this.titreMusique,
      this.imgMusique,
      this.previewMusique,
      this.popularityMusique,
      this.dateMusique,
      this.isrc,
      this.bpm);

  String idDeezer;
  String genreMusique;
  String artisteMusique;
  String titreMusique;
  String imgMusique;
  String previewMusique;
  String popularityMusique;
  String dateMusique;
  String isrc;
  String bpm;
}

Future<List> searchDeezer(String inputUser) async {
  try {
    if (inputUser == '') {
      return [];
    } else {
      final url = Uri.encodeFull("https://api.deezer.com/search?q=$inputUser");
      final response = await get(
        Uri.parse(url),
      );

      final jsonData = await jsonDecode(response.body)['data'] as List;

      print(url);

      List idDeezer = [];
      List listeTitreMusique = [];
      List listeArtistesMusique = [];
      List listeImgMusique = [];
      List listePreviewMusique = [];

      for (var i = 0; i <= jsonData.length - 1; i++) {
        idDeezer.add(jsonData[i]['id'].toString());
        listeTitreMusique.add(jsonData[i]['title']);
        listeArtistesMusique.add(jsonData[i]['artist']['name']);
        listeImgMusique.add(jsonData[i]['album']['cover_medium']);
        listePreviewMusique.add(jsonData[i]['preview']);
      }

      List apiDeezer = [
        idDeezer,
        listeTitreMusique,
        listeArtistesMusique,
        listeImgMusique,
        listePreviewMusique
      ];

      return apiDeezer;
    }
  } on Exception catch (e) {
    print(e);
    return [];
  }
}

// Faire fonction qui prend l'ID Deezer et en ressort : titre, artiste, photo, mp3, popularity => (List avec plusieurs String)
Future<Map<String, String>> infoDeezer(String idDeezer) async {
  //Info track (titre, artiste, photo, mp3, popularity)
  final url = Uri.encodeFull('https://api.deezer.com/track/$idDeezer');
  final response = await get(Uri.parse(url));

  final titreMusique = await jsonDecode(response.body)['title'];
  final artistesMusique = await jsonDecode(response.body)['artist']['name'];
  final imgMusique = await jsonDecode(response.body)['album']['cover_medium'];
  final previewMusique = await jsonDecode(response.body)['preview'];
  final idAlbum = await jsonDecode(response.body)['album']['id'];
  final popularity = await jsonDecode(response.body)['rank'].toString();
  final releaseDate = await jsonDecode(response.body)['release_date'];
  final isrc = await jsonDecode(response.body)['isrc'];
  final bpm = await jsonDecode(response.body)['bpm'];

  //Recupération du genre de la musique à travers l'id Album

  final urlAlbum = Uri.encodeFull('https://api.deezer.com/album/$idAlbum');
  final responseAlbum = await get(Uri.parse(urlAlbum));

  final dynamic genreAlbum;

  //condition si le genre est nul
  if (jsonDecode(responseAlbum.body)['genres']['data'].isEmpty) {
    genreAlbum = '';
  } else {
    genreAlbum =
        await jsonDecode(responseAlbum.body)['genres']['data'][0]['name'];
  }
  //fin condition

  Map<String, String> listeMusique = {
    idDeezerKey.toString(): idDeezer.toString(),
    genreAlbumKey.toString(): genreAlbum.toString(),
    artistesMusiqueKey.toString(): artistesMusique.toString(),
    titreMusiqueKey.toString(): titreMusique.toString(),
    imgMusiqueKey.toString(): imgMusique.toString(),
    previewMusiqueKey.toString(): previewMusique.toString(),
    popularityKey.toString(): popularity.toString(),
    releaseDateKey.toString(): releaseDate.toString(),
    isrcKey.toString(): isrc.toString(),
    bpmKey.toString(): bpm.toString()
  };

  return listeMusique;
}

// Faire fonction qui prend le titre et l'artiste et qui en ressort le lien Youtube => String
String lienYoutube(String saisieUser) {
  const baseUrl = 'https://www.youtube.com/results?search_query=';
  return Uri.encodeFull('$baseUrl$saisieUser');
}

// Faire fonction qui prend le titre et l'artiste et qui en ressort le lien Spotify => String
String lienSpotify(String saisieUser) {
  const baseUrl = 'https://open.spotify.com/search/';
  return Uri.encodeFull('$baseUrl$saisieUser');
}

// Faire fonction qui prend le titre et l'artiste et qui en ressort le lien Spotify => String
String lienAppleMusic(String saisieUser) {
  const baseUrl = 'https://music.apple.com/fr/search?term=';
  return Uri.encodeFull('$baseUrl$saisieUser');
}

// Faire fonction qui prend le titre et l'artiste et qui en ressort le lien Deezer => String
String lienDeezer(String idDeezer) {
  const baseUrl = 'https://www.deezer.com/track/';
  return Uri.encodeFull('$baseUrl$idDeezer');
}
