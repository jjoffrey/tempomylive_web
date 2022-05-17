import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tempomylife_web/common_widget/baniere_ajout_musique.dart';
import 'package:tempomylife_web/common_widget/gradient_container.dart';
import 'package:url_launcher/url_launcher.dart';

import 'common_widget/language.dart';
import 'common_widget/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static var langageApp = Francais();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo My Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tempo Room'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late final player;

  @override
  void initState() {
    super.initState();
    initializeAudio();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;
      setScreenSize(size);

      //this function will allow you to get the music duration
    });
  }

  Future sendEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'joffrey@tempomylife.com',
    );

    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void initializeAudio() async {
    player = AudioPlayer(playerId: "temporoom");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    player.pause();
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap,
      bool isBold = false}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        isBold == false ? FontWeight.normal : FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoApp(
          lienVideo:
              "https://assets.mixkit.co/videos/preview/mixkit-woman-doing-kickbox-movements-with-a-coach-40258-large.mp4",
          network: true,
        ),
        Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          drawer: Drawer(
            child: GradientContainer(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    _createDrawerItem(
                        icon: Icons.download,
                        text: "Télécharger l'app",
                        onTap: () {},
                        isBold: true),
                    Divider(
                      height: 0,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.white,
                    ),
                    _createDrawerItem(
                      icon: Icons.person,
                      text: "Changer mon profil",
                      onTap: () {},
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.white,
                    ),
                    _createDrawerItem(
                      icon: Icons.email_outlined,
                      text: "Me contacter",
                      onTap: () {
                        sendEmail();
                      },
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.white,
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.white,
                    ),
                    _createDrawerItem(
                        icon: Icons.policy_outlined,
                        text: "Lire les CGU",
                        onTap: () async => await launchUrl(
                              Uri.parse(
                                  "https://www.iubenda.com/conditions-generales/25623444"),
                            )),
                    Divider(
                      height: 0,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.white,
                    ),
                    _createDrawerItem(
                      icon: Icons.lock_outlined,
                      text: "Lire la Politique de Confidentialité",
                      onTap: () async => await launchUrl(Uri.parse(
                          "https://www.iubenda.com/privacy-policy/25623444")),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    _createDrawerItem(
                      icon: Icons.logout,
                      text: "Se déconnecter",
                      onTap: () async {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black38,
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: LayoutBuilder(builder: (context, constraints) {
            var parentHeight = constraints.maxHeight;
            var parentWidth = constraints.maxWidth;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Opacity(
                    opacity: 0.8,
                    child: buildFrontCardTempo(
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: const Color(0xFF707070),
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Icon(
                                        Icons.more_horiz_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                                height: 20,
                              )
                            ],
                          ),
                          height: parentHeight * 0.35,
                          width: parentHeight * 0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://e-cdns-images.dzcdn.net/images/cover/f0a1d4442389bcd7919a7054f8c0b785/250x250-000000-80-0-0.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        "mp3Musique",
                        "songID",
                        [],
                        {},
                        "theme",
                        "memberUid"),
                  ),
                  IconButton(
                      onPressed: () => player.play(
                          "https://cdns-preview-0.dzcdn.net/stream/c-05528035755eec7d1fb4807c78972b29-3.mp3"),
                      icon: Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: Colors.white,
                      ))
                ],
              ),
            );
          }),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFF152737),
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.modulate,
              ),
              child: Image.asset(
                'floating_add_music_button.png',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              baniereAjoutMusique(context, "auth.currentUser!.uid",
                  tempoRoomID: "widget.tempoRoomID",
                  themeTempoRoom: "widget.themeTempoRoom");
              player.pause();
            },
          ),
        ),
      ],
    );
  }

  //fonction pour le Scroll
  void startPosition(DragStartDetails details) {
    _isDragging = true;
  }

  void updatePosition(DragUpdateDetails details) {
    _position = _position + details.delta;

    final x = _position.dx;
    _angle = 45 * x / _screenSize.width;
  }

  void endPosition(String _mp3musique, String songID, List proprioMusiqueList,
      Map apiDeezer, String theme, String memberID) {
    _isDragging = false;
    final status = getStatus();

    switch (status) {
      case CardStatusTempo.like:
        like(_mp3musique, songID, proprioMusiqueList, apiDeezer, theme,
            memberID);
        break;

      case CardStatusTempo.dislike:
        dislike(_mp3musique, songID, proprioMusiqueList, apiDeezer, theme,
            memberID);
        break;

      default:
        resetPosition();
    }
  }

  CardStatusTempo? getStatus() {
    final x = _position.dx;

    const delta = 50;

    if (x >= delta) {
      return CardStatusTempo.like;
    } else if (x <= -delta) {
      return CardStatusTempo.dislike;
    }
  }

  void like(String _mp3musique, String songID, List proprioMusiqueList,
      Map apiDeezer, String theme, String memberID) {
    setState(() {
      _angle = 20;
      _position += Offset(2 * _screenSize.width, 0);
      _nextCard(_mp3musique);
    });
  }

  void dislike(String _mp3musique, String songID, List proprioMusiqueList,
      Map apiDeezer, String theme, String memberID) {
    setState(() {
      _angle = -20;
      _position -= Offset(2 * _screenSize.width, 0);
      _nextCard(_mp3musique);
    });
  }

  Future _nextCard(String _mp3musique) async {
    await Future.delayed(const Duration(milliseconds: 400));
    resetPosition();
  }

  void resetPosition() {
    _isDragging = false;
    _position = Offset.zero;
    _angle = 0;
  }

  void setScreenSize(Size screenSize) => _screenSize = screenSize;

  bool _isDragging = false;
  double _angle = 0;
  Offset _position = Offset.zero;
  Size _screenSize = Size.zero;

  bool get isDraging => _isDragging;

  Offset get position {
    return _position;
  }

  double get angle {
    return _angle;
  }

  Widget buildFrontCardTempo(Widget widget, String _mp3musique, String songID,
      List proprioMusiqueList, Map apiDeezer, String theme, String memberID) {
    return GestureDetector(
      child: LayoutBuilder(builder: (context, constraints) {
        final milliseconds = isDraging ? 0 : 400;

        final center = constraints.smallest.center(Offset.zero);

        final angle_ = angle * pi / 180;

        final rotatedMatrix = Matrix4.identity()
          ..translate(center.dx, center.dy)
          ..rotateZ(angle_)
          ..translate(-center.dx, -center.dy);

        return AnimatedContainer(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: milliseconds),
            transform: rotatedMatrix..translate(position.dx, position.dy),
            child: widget);
      }),
      onPanStart: (details) {
        setState(() {
          startPosition(details);
        });
      },
      onPanUpdate: (details) {
        setState(() {
          updatePosition(details);
        });
      },
      onPanEnd: (details) {
        setState(() {
          endPosition(_mp3musique, songID, proprioMusiqueList, apiDeezer, theme,
              memberID);
        });
      },
    );
  }

  //fin des fonctions pour le Scroll
}

enum CardStatusTempo { like, dislike }
