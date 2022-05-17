import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tempomylife_web/common_widget/show_alert_dialog.dart';
import 'package:tempomylife_web/services/musique_api.dart';

Future baniereAjoutMusique(BuildContext context, String memberUid,
    {String tempoRoomID = "", String themeTempoRoom = ""}) {
  return showModalBottomSheet(
      backgroundColor: Colors.brown[900],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      isScrollControlled: true, // set this to true
      builder: (_) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.88,
            minChildSize: 0.5,
            maxChildSize: 0.88,
            builder: (_, ScrollController scrollController) {
              return AjoutMusique(
                context: context,
                tempoRoomID: tempoRoomID,
                themeTempoRoom: themeTempoRoom,
              );
            },
          ),
        );
      });
}

class AjoutMusique extends StatefulWidget {
  final BuildContext context;

  AjoutMusique(
      {Key? key,
      required this.context,
      required this.tempoRoomID,
      required this.themeTempoRoom})
      : super(key: ajoutMusiqueKey);

  @override
  _AjoutMusiqueState createState() => _AjoutMusiqueState();

  static final GlobalKey<_AjoutMusiqueState> ajoutMusiqueKey = GlobalKey();
  final String tempoRoomID;
  final String themeTempoRoom;
}

class _AjoutMusiqueState extends State<AjoutMusique> {
  late final TextEditingController ajoutMusiqueController;
  String inputUser = '';
  List listeMusiques = [];
  FToast? fToast;
  late AudioPlayer audioplayer;
  PlayerState statut = PlayerState.STOPPED;
  Duration position = Duration(seconds: 0);
  Duration duree = Duration(seconds: 10);
  int index = 0;

  @override
  void initState() {
    super.initState();
    ajoutMusiqueController = TextEditingController();
    audioplayer = AudioPlayer(playerId: "temporoom");
    fToast = FToast();
    fToast?.init(context);

    //this function will allow you to get the music duration
    audioplayer.onDurationChanged.listen((Duration d) {
      setState(() => duree = d);
    });

    // //this function will allow us to move the cursor of the slider while we are playing the song
    audioplayer.onAudioPositionChanged.listen((Duration d) {
      setState(() => position = d);
    });

    audioplayer.onPlayerCompletion.listen((event) {
      setState(() {
        position = duree;
        statut = PlayerState.STOPPED;
      });
    });
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color(0xFF091826),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check, color: Colors.white),
          SizedBox(
            width: 12.0,
          ),
          Text(
            "Ta musique a bien été ajouté",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );

    HapticFeedback.mediumImpact();

    fToast?.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }

  @override
  dispose() {
    super.dispose();
    audioplayer.dispose();
    ajoutMusiqueController.dispose();
  }

  Future play(String mp3Musique) async {
    //final auth = Provider.of<AuthBase>(context, listen: false);
    await audioplayer.play(mp3Musique);
    setState(() {
      statut = PlayerState.PLAYING;
    });
  }

  Future pause() async {
    await audioplayer.pause();
    setState(() {
      statut = PlayerState.PAUSED;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final auth = Provider.of<AuthBase>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon:
                        const Icon(Icons.clear_outlined, color: Colors.white)),
                Text("Partager une musique",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                const SizedBox(
                  width: 20,
                  height: 20,
                )
              ],
            ),
            Card(
                color: Colors.black.withOpacity(0.1),
                borderOnForeground: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autofocus: true,
                    controller: ajoutMusiqueController,
                    autocorrect: false,
                    enableSuggestions: false,
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: ajoutMusiqueController.text.isNotEmpty
                          ? IconButton(
                              onPressed: () {
                                ajoutMusiqueController.clear();
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.clear_outlined,
                                color: Colors.white,
                              ))
                          : null,
                      enabledBorder: InputBorder.none,
                      hintText: "Rechercher",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    onChanged: (String value) async {
                      listeMusiques = await searchDeezer(value);
                      print(listeMusiques);
                      pause();
                    },
                  ),
                )),
            Text(
              "Dans la Tempo Room :",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Chip(
                  //deux conditions qui permettent de changer les couleurs de sélections
                  backgroundColor: Colors.white,
                  label: Text(
                    widget.themeTempoRoom,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount:
                      listeMusiques.isEmpty ? 15 : listeMusiques[0].length,
                  itemBuilder: (context, i) {
                    if (listeMusiques.isEmpty) {
                      return const Card();
                    } else {
                      final idDeezer = listeMusiques[0][i];
                      final titreMusique = listeMusiques[1][i];
                      final artisteMusique = listeMusiques[2][i];
                      final imgMusique = listeMusiques[3][i];
                      final previewMusique = listeMusiques[4][i];
                      return ListTile(
                        title: Text(titreMusique,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        subtitle: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Image.asset(
                                'assets/deezer_logo.png',
                                width: 15,
                                height: 15,
                              ),
                            ),
                            Text(artisteMusique,
                                style: const TextStyle(color: Colors.white)),
                          ],
                        ),
                        leading: Container(
                          child: Center(
                            child: ((statut == PlayerState.PLAYING) &&
                                    i ==
                                        index) //condition à trouver pour lecture
                                ? SleekCircularSlider(
                                    appearance: CircularSliderAppearance(
                                      animDurationMultiplier: 1,
                                      size: 80,
                                      startAngle: -90,
                                      angleRange: 360,
                                      customWidths: CustomSliderWidths(
                                        handlerSize: 0,
                                        progressBarWidth: 2,
                                      ),
                                      customColors: CustomSliderColors(
                                          progressBarColor: Colors.white),
                                    ),
                                    min: 0,
                                    max: 30,
                                    initialValue: position.inSeconds.toDouble(),
                                    innerWidget: (val) {
                                      return Center(
                                          child: Icon(
                                        Icons.pause,
                                        size: 30,
                                        color: Colors.white,
                                      ));
                                    },
                                  )
                                : Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                          ),
                          height: 50.0,
                          width: 50.0,
                          decoration: ((statut == PlayerState.PLAYING) &&
                                  i == index) //condition à trouver pour lecture
                              ? null
                              : BoxDecoration(
                                  image: DecorationImage(
                                      colorFilter: new ColorFilter.mode(
                                          Colors.black.withOpacity(0.7),
                                          BlendMode.dstATop),
                                      image: new NetworkImage(
                                        imgMusique == null
                                            ? 'https://firebasestorage.googleapis.com/v0/b/tempomylife-846f7.appspot.com/o/noimage.jpeg?alt=media&token=85c28d70-5a85-4c1b-b4d9-0589389764ec'
                                            : imgMusique,
                                      ),
                                      fit: BoxFit.fill)),
                        ),
                        dense: true,
                        onTap: () {
                          if (statut == PlayerState.PLAYING && i == index) {
                            index = i;
                            pause();
                            position = Duration(seconds: 0);
                          } else {
                            pause();
                            index = i;
                            play(previewMusique);
                          }
                        },
                        trailing: InkWell(
                          onTap: () async {
                            _showToast();

                            dynamic indicateurIsrcOrNot;

                            Map apiDeezer = await infoDeezer(idDeezer);
                            print(apiDeezer);

                            // indicateurIsrcOrNot =
                            //         await auth.ajoutMusiqueFirebaseTempoRoom(
                            //             idDeezer,
                            //             apiDeezer,
                            //             widget.tempoRoomID,
                            //             widget.themeTempoRoom);

                            print(indicateurIsrcOrNot);

                            if (indicateurIsrcOrNot == false) {
                              showAlertDialog(context,
                                  title: "Erreur",
                                  content:
                                      "Cette musique a déjà été partagé dans la Tempo Room",
                                  defaultActionText: "Compris");
                            }
                          },
                          child: const Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      );
                    }
                  }),
            ),
          ]),
    );
  }
}
