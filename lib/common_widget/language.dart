class English {
  //CONNEXION PAGE
  String get signInWithGoogle => "Sign in with Google";
  String get signInWithFacebook => "Sign in with Facebook";
  String get signInWithEmail => "Sign in with email";
  String get signInWithApple => "Sign in with Apple";
  String get connexionConditionsPart1 =>
      "By using Tempo My Life application, you declare having read and accepted the  ";
  String get connexionConditionsPart2 => "general terms of use";
  String get connexionConditionsPart3 => " and the ";
  String get connexionConditionsPart4 => "privacy policy.";
  String get error => "Error";
  String get errorMessageWhileConnect =>
      "Please accept the Terms of Use and Privacy Policy to use the Tempo My Life app ";
  String get connection => "Sign In";
  String get signIn => "Sign in";
  String get password => "Password";
  String get notRegistered => "Not yet registered? Create an account";
  String get forgottenPassword => "Forgot your password?";
  String get createAccount => "Create an account";
  String get alreadyAnAccount => "Already have an account? Sign in";
  String get cancel => "Cancel";

  String get failedConnection => "The connection failed";
  String get newPassword => "New password";
  String get newPasswordExplanation =>
      "You will receive an email with instructions on how to change your password.";
  String get send => "Send";

  //TAB BAR
  String get tabBarDiscover => "Discover";
  String get tabBarMusics => "Songs";
  String get tabBarNotifications => "Notifications";
  String get tabBarProfile => "Profile";

  //DRAWERS
  //ACTION
  String yes = "Yes";
  String ok = "OK";
  String confirmation = "Confirmation";
  String finish = "Done";
  String open = "Open";

  //DÉCONNEXION
  String signOuttitle = "Logout";
  String signOutcontent = "Are you sure you want to logout?";
  String signOutdefault = "Logout";

  //BANDEAU DRAWER
  String get termOfUse => "Term of Use";

  String get contactMe => "Contact";

  String get privacyPolicy => "Privacy";

  String get bugReport => "Report bugs";

  String get settings => "Settings";

  String get changeLangage => "Change language";
  String get howWorkTheApp => "How does the app work?";

  //DELETE ACCOUNT
  String deleteAccountTitle = "Are you sure you want to delete your account?";
  String deleteAccountContent =
      "Be careful this action is irreversible: you will lose all the data linked to your account";
  String deleteAccountReason = "For what reason?";
  String deleteAccountDesignReason = "I don't like the design.";
  String deleteAccountDontLikeMusicReason = "I don't like the songs.";
  String deleteAccountOtherPlatformReason = "I discover music elsewhere";
  String deleteAccountNoFriendsReason = "My friends are not on the app";
  String deleteAccountOtherReason = "Other reasons?";
  String deleteMyAccount = "Delete my account";
  String deleteAccountValidation = "Your account has been deleted";
  String deleteAccountMailAdressAsk = "Enter your email address";
  String deleteAccountWrongMailTitle = "Incorrect email address";
  String deleteAccountWrongMailContent =
      "For security reasons, you must enter the email address linked to your account. If you can't find it, please contact me by email";

  //ONGLET MUSIQUES
  String get sharedMusics => "Shared Music";
  String get likedMusics => "Liked Music";
  String get spotifyNotInstalled =>
      "The Spotify application was not detected on this phone.";
  String get youtubeNotInstalled =>
      "The Youtube application was not detected on this phone.";
  String get deezerNotInstalled =>
      "The Deezer application was not detected on this phone.";

  //BOARDING SCREEN
  String get boardingScreenTitle1 => "Tired of listening to the same songs?";
  String get boardingScreenContent1 =>
      "On Tempo My Life, it's not algorithms, but your buddies who introduce you to new music! 🦸🏾‍♂️🦸‍♀️";
  String get boardingScreenTitle2 => "How does it work?";
  String get boardingScreenContent2 =>
      "Swipe to discover the music shared by other users according to the theme of the day, in random mode or in a private room (Tempo Room).";
  String get boardingScreenTitle3 => "Share the best music!";
  String get boardingScreenContent3 =>
      "The most liked songs are published in the playlist of the week ! \n Can you make it to the next one? 😎 ";

  //LIKED MUSICS
  String get dontLikeMusics => "You don't like any songs yet 😔";
  String get getYourFirstLike => "Get your first like by sharing songs!";

  //SHARED MUSICS
  String get submittedBy => "Shared by";
  String get listenToPlaylist => "LISTEN TO THE PLAYLIST";
  String get dontShareMusics => "You haven't shared any song yet 😔";

  //ADD MUSICS
  String get succeedUploadMusic => "Your music has been added";
  String get musicSucceedInTempoRoom => "Music added in the Tempo Room";
  String get shareAMusic => "Share a Music";
  String get suggestAMusic => "Suggest a Music";

  //NOTIFICATIONS
  String get dontHaveNotifications => "You don't have any notifications yet 😔";
  String get getFirstLike => "Get your first notification by sharing music!";
  String get submitAMusic => "Submit a music";
  String get playlistNotification =>
      "One of your songs is in the playlist of the week!";
  String followerNotification(String prenom) =>
      "$prenom has started following you.";
  String likeNotification(String prenom) => "$prenom likes one of your songs!";
  String firstMusicAddedInTempoRoom(String prenom, String tempoRoomName) {
    if (tempoRoomName == "") {
      return "$prenom shared his first music in one of your Tempo Room.";
    } else {
      return "$prenom shared his first music in the Tempo Room : $tempoRoomName";
    }
  }

  String newPlaylistInTempoRoom(String tempoRoomName) {
    if (tempoRoomName == "") {
      return "The playlist of a Tempo Room has been updated. Check if your music is in the Top !";
    } else {
      return "The playlist of the Tempo Room : $tempoRoomName has been updated! Check if your music is in the Top.";
    }
  }

  String get openTheTempoRoom => "Open the Tempo Room ?";
  String get newMessage => "New message";
  String newMessageFromX(String expediteur) =>
      "$expediteur sent you a message.";

  String get now => "Now";
  String xMinutesAgo(int differenceInMinutes) =>
      "$differenceInMinutes minutes ago";
  String get oneHourAgo => "1 hour ago";
  String get twoHoursAgo => "2 hours ago";
  String xHoursAgo(int differenceInMinutes) => "$differenceInMinutes hours ago";
  String get oneDayAgo => "1 day ago";
  String xDaysAgo(int differenceInDays) => "$differenceInDays days ago";
  String get songUnavailable => "Music not found";

  //BANIERES MUSICS
  String get searchInMyMusics => "Search in my Songs";

  //PROFIL
  String get takeAPicture => "Take a picture";
  String get chooseInLibrary => "Choose in Library";
  String get fillMyProfile => "Complete my profile";
  String get changeMyPicture => "Change profile picture";
  String get mailAddress => "Mail Address";
  String get changeMyMail => "Edit e-mail";
  String get changeMyMail2 => "Edit my mail address";
  String get firstName => "First name";
  String get writeFirstName => "Write your first name here";
  String get city => "City";
  String get writeCity => "Write your current city";
  String get description => "Description";
  String get writeDescription => "Give the description of your profile";
  String get oops => "Oops !";
  String get whyErrorProfile =>
      "At least one of the fields has not been completed";
  String get whyErrorPassword =>
      "At least one of the fields is under or over the allowed number of characters";
  String get save => "Save";
  String get accountVerification => "Verification of the account";
  String get explanationAccountVerification =>
      "For your security, please enter your password in order to edit confidential information.";
  String get next => "Next";
  String get changePassword => "Change password";
  String get writePassword => "Write your password";
  String get confirmationPassword => "Confirm password";
  String get perfect => "Perfect!";
  String get errorImage => "Image error";
  String get modifyProfile => "Edit profile";
  String get succeedChangeEmail =>
      "Your e-mail address has been successfully modified";
  String get succeedChangePassword =>
      "Your password has been successfully modified.";
  String get thirdPartyError =>
      "Since your account was created with a third party service (Facebook, Google or Apple), this feature is not available. Please contact me for more information.";

  //ONGLET EN VEDETTES
  String get winners => "Winners";
  String get lastPlaylists => "Last playlists";
  String get search => "Search";

  //PLAYLISTS
  String get lastUpdate => "Last update :";
  String get soonAvailable => "Coming soon !";

  //INFO PROFIL
  String get notFoundUser => "This user cannot be found";
  String get musics => "Songs";
  String get followers => "Followers";
  String get subscriptions => "Following";
  String get likesOnMusics => "Number of likes on songs";
  String get seducedPeople => "Number of people who liked songs";
  String get information => "Information";
  String get explanationSeducedPeople =>
      "Corresponds to the number of people who liked at least once one of your songs";
  String get understood => "Understood";
  String get playlistAppearances => "Appearances in Playlist of the Week";
  String get musicsInPlaylist => "Songs appeared in Playlist of the Week";
  String seducedPeopleByX(String prenomProfil) =>
      "People seduced by songs of $prenomProfil";
  String likesOnMusicOfX(String prenomProfil) =>
      "Likes on $prenomProfil's songs";
  String likesOnMusicsOfX(String prenomProfil) =>
      "Likes on $prenomProfil's song";
  String get explanationRating =>
      "This rating is generated based on the number of listeners on your music. You are the only one who has access to it.";
  String get explanationTempoRoomLogo =>
      "This music was shared in a Tempo Room and not in the shared area.";
  String musicsOf(String prenomProfil) => "Songs of $prenomProfil";
  String get searchAFriend => "Search for a friend";
  String get follow => "Follow";
  String get followed => "Followed";
  String get followingExplanation =>
      "By following a profile, you get access to their music easier and you receive a notification as soon as this person likes one of your music.";
  String stopFollow(String prenom) => "Do not follow $prenom anymore ?";

//INFO MUSIQUES
  String get succeedDeleteMusic => "Your music has been deleted";
  String get openOnAppleMusic => "Open on Apple Music";
  String get openOnYoutube => "Open on Youtube";
  String get openOnDeezer => "Open on Deezer";
  String get openOnSpotify => "Open on Spotify";
  String get deleteFromMyMusics => "Remove from My Music";
  String get share => "Share";
  String get close => "Close";
  String shareWithLink(String titre, String artiste, String spotifyLink,
          String appleMusicLink, String youtubeLink, String deezerLink) =>
      "Listen $titre by $artiste : \n - on Spotify : $spotifyLink \n - on Apple Music : $appleMusicLink \n - on Youtube : $youtubeLink \n - on Deezer : $deezerLink";

  String sharePlaylistWithLink(String titrePlaylist, String spotifyLink,
          String appleMusicLink, String youtubeLink, String deezerLink) =>
      "Listen to the collaborative playlist $titrePlaylist of Tempo my Life : \n - on Spotify : $spotifyLink \n - on Apple Music : $appleMusicLink \n - on Youtube : $youtubeLink \n - on Deezer : $deezerLink";
  String sharePlaylistWithLinkInTempoRoom(
          String titrePlaylist,
          String spotifyLink,
          String appleMusicLink,
          String youtubeLink,
          String deezerLink) =>
      "Listen to the collaborative playlist  : \n - on Spotify : $spotifyLink \n - on Apple Music : $appleMusicLink \n - on Youtube : $youtubeLink \n - on Deezer : $deezerLink";

//SCROLL
  String get randomMode => "Random mode";
  String get activateRandomMode =>
      "No more sounds in the theme of the day.\nSwitch to random mode.";
  String get noMoreSongs =>
      "There is no more music for the moment. Share a music or come back later.";
  String get noMoreSongsInTempo => "There is no more music for the moment.";
  String displayYear(String releaseDate) => "Year : $releaseDate";
  String get noTheme => "No theme";
  String get tempoRoom => "Tempo Room";
  String get themeOfTheDay => "Today's theme";
  String get loading => "Loading...";
  String get loadOtherMusics => "Load more songs";
  String get noMoreMusics => "There is no more song at the moment! 😌";
  String giveNumberMusic(int tailleList) =>
      "You listened to $tailleList song 😌";
  String giveNumberMusics(int tailleList) =>
      "You listened to $tailleList songs 😌";
  String get accordingTheme => "according to the theme:";
  String get inTheTempoRoom => "in the Tempo Room :";
  String get suggestMine => "Sharing mine :";
  String get networkIssue => "Network problem";
  String get verifyYourNetwork => "Please check your internet connection";
  String somethingOfX(String firstElement, String secondElement) =>
      "$firstElement of $secondElement";
  String get errorSameMusicInThemeOfTheDay =>
      "Too late! Someone has already shared this music in the theme of the day";

//TEMPO ROOM
  String get joinTempoRoom => "Join a Tempo Room";
  String get putTempoRoomID => "Enter the Tempo Room ID";
  String get enter => "Enter";
  String get explanationTempoRoom =>
      "A Tempo Room is a private room where you can share music only with people who have access to it and generate a collaborative playlist";
  String get incorrectTempoIDContent =>
      "The code for the Tempo Room is incorrect. Please try again.";
  String get incorrectTempoIDTitle => "Tempo Room not found";
  String get errorResultsTempoRoom =>
      "The results of the Tempo Room are not yet available. You will be informed in your notifications as soon as they are!";

  String get goBackFromTempoRoom => "Leave the Tempo Room";
  String get alreadySharedMusic => "You have already shared this music.";
  String get errorSameMusicInTempoRoom =>
      "Too late ! This music has already been shared in the tempo room";
  String get peopleinTempoRoom => "People in the Tempo Room";
  String mySongsIn(String tempoRoomID) => "My Songs in $tempoRoomID";
  String get mySongs => "My Songs";
  String get inviteFriendsInTempoRoom => "Invite friends in the Tempo Room";
  String get welcomeInTheTempoRoom => "Welcome in the Tempo Room";
  String get explanationInsideTempoRoom =>
      "1️: Share one or more music\n\n2️: Vote for the music you like \n\n3️: As soon as the playlist is available, you can find it by clicking on the 🏆\n\nEnjoy !";
  String shareTempoRoom(String linkTempoRoom) =>
      "join my private room to make a collaborative playlist : $linkTempoRoom";
  String get inviteFriends => "Invite friends";
  String get topOfTempoRoom => "Tempo Room's Top";
  String get mySongsInTempoRoom => "My Music in the Tempo Room";

  String get youReceivedAGift => "You just got a gift !";
  String get hereIsYourRoom =>
      "\nYour Tempo Room has just been created!\n\nInvite your friends to start sharing music and generate your collaborative playlist.";
  String get generatePlaylist => "Generate playlist";
  String get errorPlaylist =>
      "Due to an error, your playlist could not be generated.";
  String get successPlaylistGenerated =>
      "Your playlist has been generated. Find it by clicking on the trophy.";
  String get notEnoughMusic =>
      "You need a minimum of 20 songs to generate a playlist in your Tempo Room.";

  String get notEnoughPeople =>
      "There must be at least 2 people in your Tempo Room to generate a playlist.";

  String get alreadyDoneToday =>
      "You've already generated a playlist today. Try again later.";
  String get iWantMyTempoRoom => "I want to create my Tempo Room !";
  String get linkCreateTempoRoom => "https://forms.gle/3jnQk6JxUo4SVmy68";
}

class Francais {
  //CONNEXION PAGE
  String get signInWithGoogle => "Se connecter avec Google";
  String get signInWithFacebook => "Se connecter avec Facebook";
  String get signInWithEmail => "Se connecter par email";
  String get signInWithApple => "Se connecter avec Apple";
  String get connexionConditionsPart1 =>
      "En utilisant l'application Tempo My Life, vous déclarez avoir lu et accepté les ";
  String get connexionConditionsPart2 => "conditions générales d'utilisation";
  String get connexionConditionsPart3 => " ainsi que la ";
  String get connexionConditionsPart4 => "politique de confidentialité.";
  String get error => "Erreur";
  String get errorMessageWhileConnect =>
      "Merci d'accepter les conditions générales d'utilisation ainsi que la politique de confidentialité pour utiliser l'app Tempo My Life ";
  String get failedConnection => "La connexion a échouée";

  String get connection => "Connexion";
  String get signIn => "Se connecter";
  String get password => "Mot de passe";
  String get notRegistered => "Pas encore inscrit ? Inscription";
  String get forgottenPassword => "Mot de passe oublié";
  String get createAccount => "Créer un compte";
  String get alreadyAnAccount => "Déjà un compte? Se connecter";
  String get newPassword => "Nouveau mot de passe";
  String get newPasswordExplanation =>
      "Tu recevras un e-mail avec des consignes pour modifier ton mot de passe.";
  String get send => "Envoyer";

  //TAB BAR
  String get tabBarDiscover => "Découvrir";
  String get tabBarMusics => "Musiques";
  String get tabBarNotifications => "Notifications";
  String get tabBarProfile => "Profil";

  //DRAWERS
  //ACTION
  String get cancel => "Annuler";
  String yes = "Oui";
  String open = "Ouvrir";
  String ok = "OK";
  String confirmation = "Confirmation";
  String finish = "Terminé";

  //DÉCONNEXION
  String signOuttitle = "Déconnexion";
  String signOutcontent = "Es-tu sûr de vouloir te déconnecter ?";
  String signOutdefault = "Se déconnecter";

  //BANDEAU DRAWER
  String get termOfUse => "Conditions Générales d'utilisation";
  String get contactMe => "Me contacter";
  String get privacyPolicy => "Politique de confidentialité";
  String get bugReport => "Reporter un bug";
  String get settings => "Paramètres";
  String get changeLangage => "Changer la langue";
  String get howWorkTheApp => "Comment fonctionne l'app ?";

  //DELETE ACCOUNT
  String deleteAccountTitle = "Es-tu sûr de vouloir supprimer ton compte ?";
  String deleteAccountContent =
      "Attention cette action est irréversible : tu perdras toutes les données liées à ton compte.";
  String deleteAccountReason = "Pour quelle raison ?";
  String deleteAccountDesignReason = "Le design ne me plaît pas";
  String deleteAccountDontLikeMusicReason =
      "Je n'aime pas les musiques proposées";
  String deleteAccountOtherPlatformReason = "Je découvre des musiques ailleurs";
  String deleteAccountNoFriendsReason = "Mes amis ne sont pas sur l'app";
  String deleteAccountOtherReason = "Autres raisons ?";
  String deleteMyAccount = "Supprimer mon compte";
  String deleteAccountValidation = "Ton compte a bien été supprimé";
  String deleteAccountMailAdressAsk = "Renseigne ton adresse email";
  String deleteAccountWrongMailTitle = "Adresse e-mail incorrecte";
  String deleteAccountWrongMailContent =
      "Par mesure de sécurité, tu dois renseigner l'email lié à ton compte. Si tu ne la trouves plus merci de me contacter par e-mail.";

  //ONGLET MUSIQUES
  String get sharedMusics => "Musiques partagées";
  String get likedMusics => "Musiques aimées";
  String get spotifyNotInstalled =>
      "L'application Spotify n'a pas été détécté sur ce téléphone.";
  String get youtubeNotInstalled =>
      "L'application Youtube n'a pas été détécté sur ce téléphone.";
  String get deezerNotInstalled =>
      "L'application Deezer n'a pas été détécté sur ce téléphone.";

  //BOARDING SCREEN
  String get boardingScreenTitle1 => "Marre d'écouter les mêmes musiques ?";
  String get boardingScreenContent1 =>
      "Sur Tempo My Life, ce ne sont pas des algorithmes mais tes potes qui te font découvrir de nouveaux sons ! 🦸🏾‍♂️🦸‍♀️";
  String get boardingScreenTitle2 => "Comment ça marche ?";
  String get boardingScreenContent2 =>
      "Swipe pour découvrir les musiques partagées par les autres utilisateurs selon le thème du jour, en mode aléatoire ou dans une salle privée (Tempo Room).";
  String get boardingScreenTitle3 => "Partage la meilleure musique !";
  String get boardingScreenContent3 =>
      "Les musiques les plus likées sont publiées dans la playlist de la semaine ! \n Arriveras-tu à te placer dans la prochaine ? 😎 ";

  //LIKED MUSICS
  String get dontLikeMusics => "Tu n'aimes pas encore de musiques 😔";
  String get getYourFirstLike =>
      "Obtiens ton premier like en partageant une musique !";

  //SHARED MUSICS
  String get submittedBy => "Proposé par";
  String get listenToPlaylist => "ÉCOUTER LA PLAYLIST";
  String get dontShareMusics => "Tu n'as pas encore partagé de musiques 😔";

  //ADD MUSICS
  String get succeedUploadMusic => "Ta musique a bien été ajoutée";
  String get musicSucceedInTempoRoom => "Musique ajoutée dans la Tempo Room";
  String get shareAMusic => "Partager une musique";
  String get suggestAMusic => "Proposer une Musique";

  //NOTIFICATIONS
  String get dontHaveNotifications => "Tu n'as pas encore de notifications 😔";
  String get getFirstLike =>
      "Obtiens ton premier like en partageant une musique !";
  String get submitAMusic => "Proposer une musique";
  String get playlistNotification =>
      "Une de tes musiques est dans la playlist de la semaine !";
  String followerNotification(String prenom) =>
      "$prenom a commencé à te suivre.";
  String likeNotification(String prenom) =>
      "$prenom aime une de tes musiques !";
  String firstMusicAddedInTempoRoom(String prenom, String tempoRoomName) {
    if (tempoRoomName == "") {
      return "$prenom a partagé sa première musique dans une de tes Tempo Room.";
    } else {
      return "$prenom a partagé sa première musique dans la Tempo Room : $tempoRoomName";
    }
  }

  String newPlaylistInTempoRoom(String tempoRoomName) {
    if (tempoRoomName == "") {
      return "La playlist d’une Tempo Room vient d’être mise à jour. Va voir si ta musique est dans le Top !";
    } else {
      return "La playlist de la Tempo Room '$tempoRoomName' vient d’être mise à jour. Va voir si ta musique est dans le Top !";
    }
  }

  String get openTheTempoRoom => "Ouvrir la Tempo Room ?";
  String get newMessage => "Nouveau message";
  String newMessageFromX(String expediteur) =>
      "$expediteur t'a envoyé un message.";

  String get now => "Maintenant";
  String xMinutesAgo(int differenceInMinutes) =>
      "Il y a $differenceInMinutes minutes";
  String get oneHourAgo => "Il y a 1 heure";
  String get twoHoursAgo => "Il y a 2 heures";
  String xHoursAgo(int differenceInMinutes) =>
      "Il y a $differenceInMinutes heures";
  String get oneDayAgo => "Il y a 1 jour";
  String xDaysAgo(int differenceInDays) => "Il y a $differenceInDays jours";
  String get songUnavailable => "Musique introuvable";

  //BANIERES MUSICS
  String get searchInMyMusics => "Rechercher dans mes musiques";

  //PROFIL
  String get takeAPicture => "Prendre une photo";
  String get chooseInLibrary => "Choisir dans la bibliothèque";
  String get fillMyProfile => "Compléter mon profil";
  String get changeMyPicture => "Modifier la photo de profil";
  String get changeMyMail => "Modifier l'e-mail";
  String get changeMyMail2 => "Modifier mon adresse e-mail";
  String get mailAddress => "Adresse e-mail";
  String get firstName => "Prénom";
  String get writeFirstName => "Écris ton prénom ici";
  String get city => "Ville";
  String get writeCity => "Écris ta ville actuelle";
  String get description => "Description";
  String get writeDescription => "Donne la description de ton profil";
  String get oops => "Oups !";
  String get whyErrorProfile => "Au moins un des champs n'a pas été rempli";
  String get whyErrorPassword =>
      "Au moins un des champs est en dessous ou dépasse le nombre de caractère autorisé";
  String get save => "Enregistrer";
  String get accountVerification => "Vérification du compte";
  String get explanationAccountVerification =>
      "Pour votre sécurité, merci de saisir votre mot de passe afin de pouvoir modifier des informations confidentielles.";
  String get next => "Suivant";
  String get changePassword => "Changer le mot de passe";
  String get writePassword => "Écris ton mot de passe";
  String get confirmationPassword => "Confirmation mot de passe";
  String get perfect => "Parfait !";
  String get errorImage => "Erreur image";
  String get modifyProfile => "Modifier profil";
  String get succeedChangeEmail => "Ton adresse e-mail a bien été modifié.";
  String get succeedChangePassword => "Ton mot de passe a bien été modifié.";
  String get thirdPartyError =>
      "Comme votre compte a été créé avec un service tiers (Facebook, Google ou Apple), cette fonctionnalité n'est pas disponible. Merci de me contacter pour plus d'informations.";

  //ONGLET EN VEDETTES
  String get winners => "Vainqueurs";
  String get lastPlaylists => "Dernières playlists";
  String get search => "Rechercher";

  //PLAYLISTS
  String get lastUpdate => "Dernière mise à jour :";
  String get soonAvailable => "Bientôt disponible !";

  //INFO PROFIL
  String get notFoundUser => "Cet utilisateur est introuvable.";
  String get musics => "Musiques";
  String get followers => "Abonnés";
  String get subscriptions => "Abonnements";
  String get likesOnMusics => "Nombre de likes obtenues sur les musiques";
  String get seducedPeople => "Nombre de personnes séduites par les musiques";
  String get information => "Information";
  String get explanationSeducedPeople =>
      "Correspond au nombre de personnes qui ont aimé au moins une fois une de tes musiques.";
  String get understood => "Compris";
  String get playlistAppearances =>
      "Apparitions dans la playlist de la semaine";
  String get musicsInPlaylist =>
      "Musiques apparues dans une playlist de la semaine";
  String seducedPeopleByX(String prenomProfil) =>
      "Personnes séduites par les musiques de $prenomProfil";
  String likesOnMusicOfX(String prenomProfil) =>
      "Likes sur la musique de $prenomProfil";
  String likesOnMusicsOfX(String prenomProfil) =>
      "Likes sur les musiques de $prenomProfil";
  String get explanationRating =>
      "Cette note est générée en fonction du nombre d'écoutes sur ta musique. Seul toi y a accès.";
  String get explanationTempoRoomLogo =>
      "Cette musique a été partagée dans une Tempo Room et non dans l'espace commun.";
  String musicsOf(String prenomProfil) => "Musiques de $prenomProfil";
  String get searchAFriend => "Rechercher un ami";
  String get follow => "S'abonner";
  String get followed => "Abonné";
  String get followingExplanation =>
      "En t'abonnant à un profil, tu accèdes à ses musiques en priorité et tu reçois une notification dès que cette personne aime une de tes musiques.";
  String stopFollow(String prenom) => "Ne plus suivre $prenom ? ";

//INFO MUSIQUES
  String get succeedDeleteMusic => "Ta musique a bien été supprimée";
  String get openOnAppleMusic => "Ouvrir sur Apple Music";
  String get openOnYoutube => "Ouvrir sur Youtube";
  String get openOnDeezer => "Ouvrir sur Deezer";
  String get openOnSpotify => "Ouvrir sur Spotify";
  String get deleteFromMyMusics => "Supprimer de Ma musique";
  String get share => "Partager";
  String get close => "Fermer";
  String shareWithLink(String titre, String artiste, String spotifyLink,
          String appleMusicLink, String youtubeLink, String deezerLink) =>
      "Écoute $titre de $artiste : \n - sur Spotify : $spotifyLink \n - sur Apple Music : $appleMusicLink \n - sur Youtube : $youtubeLink \n - sur Deezer : $deezerLink";

  String sharePlaylistWithLink(String titrePlaylist, String spotifyLink,
          String appleMusicLink, String youtubeLink, String deezerLink) =>
      "Écoute la playlist collaborative $titrePlaylist de Tempo my Life : \n - sur Spotify : $spotifyLink \n - sur Apple Music : $appleMusicLink \n - sur Youtube : $youtubeLink \n - sur Deezer : $deezerLink";
  String sharePlaylistWithLinkInTempoRoom(
          String titrePlaylist,
          String spotifyLink,
          String appleMusicLink,
          String youtubeLink,
          String deezerLink) =>
      "Écoute ma playlist collaborative  : \n - sur Spotify : $spotifyLink \n - sur Apple Music : $appleMusicLink \n - sur Youtube : $youtubeLink \n - sur Deezer : $deezerLink";

//SCROLL
  String get randomMode => "Mode aléatoire";
  String get activateRandomMode =>
      "Il n'y a plus de sons dans le thème du jour. \nPassage en mode aléatoire.";
  String get noMoreSongs =>
      "Il n'y a plus de musiques à découvrir pour le moment. Partage une musique ou reviens plus tard.";
  String get noMoreSongsInTempo =>
      "Il n'y a plus de musiques à découvrir pour le moment.";
  String displayYear(String releaseDate) => "Année : $releaseDate";
  String get tempoRoom => "Tempo Room";
  String get noTheme => "Sans thème";
  String get themeOfTheDay => "Thème du jour";
  String get loading => "Chargement...";
  String get loadOtherMusics => "Charger d'autres musiques";
  String get noMoreMusics => "Il n'y a plus de musiques pour le moment! 😌";
  String giveNumberMusic(int tailleList) =>
      "Tu as écouté $tailleList musique 😌";
  String giveNumberMusics(int tailleList) =>
      "Tu as écouté $tailleList musiques 😌";
  String get accordingTheme => "selon le thème :";
  String get inTheTempoRoom => "dans la Tempo Room :";
  String get suggestMine => "Proposer la mienne";
  String get networkIssue => "Problème réseau";
  String get verifyYourNetwork => "Veuillez vérifier votre connexion internet";
  String somethingOfX(String firstElement, String secondElement) =>
      "$firstElement de $secondElement";

  String get alreadySharedMusic => "Tu as déjà partagé cette musique.";
  String get errorSameMusicInThemeOfTheDay =>
      "Trop tard ! Quelqu'un a déjà partagée cette musique dans le thème du jour";

  //TEMPO ROOM
  String get joinTempoRoom => "Rejoindre une Tempo Room";
  String get putTempoRoomID => "Renseigne le code de la Tempo Room";
  String get enter => "Entrer";
  String get explanationTempoRoom =>
      "Une Tempo Room est une salle privée où tu peux partager des musiques uniquement aux personnes qui en ont l’accès puis générer une playlist collaborative.";
  String get incorrectTempoIDContent =>
      "Le code de la Tempo Room est incorrect. Merci de réessayer.";
  String get incorrectTempoIDTitle => "Tempo Room inexistante";
  String get errorResultsTempoRoom =>
      "Les résultats de la Tempo Room ne sont pas encore disponibles. Tu seras informé dans tes notifications dès que ce sera le cas !";
  String get goBackFromTempoRoom => "Sortir de la Tempo Room";
  String get errorSameMusicInTempoRoom =>
      "Trop tard ! Cette musique a déjà été partagée dans la Tempo Room.";
  String get peopleinTempoRoom => "Personnes dans la Tempo Room";
  String mySongsIn(String tempoRoomID) => "Mes Musiques dans $tempoRoomID";
  String get mySongs => "Mes Musiques";
  String get inviteFriendsInTempoRoom => "Inviter des amis dans la Tempo Room";
  String get welcomeInTheTempoRoom => "Bienvenue dans la Tempo Room";
  String get explanationInsideTempoRoom =>
      "1️: Partage une ou plusieurs musiques\n\n2️: Vote pour les musiques que t'aimes \n\n3️: Dès que la playlist sera disponible, tu pourras la retrouver en cliquant sur la 🏆\n\nBonne écoute !";
  String shareTempoRoom(String linkTempoRoom) =>
      "rejoins ma salle privée pour faire une playlist collaborative : $linkTempoRoom";
  String get inviteFriends => "Inviter des amis";
  String get topOfTempoRoom => "Top de la Tempo Room";
  String get mySongsInTempoRoom => "Mes musiques dans la Tempo Room";
  String get youReceivedAGift => "Tu viens de recevoir un cadeau !";
  String get hereIsYourRoom =>
      "\nTa Tempo Room vient d’être créée !\n\nInvite tes amis pour commencer à partager des musiques et générer votre playlist collaborative.";
  String get generatePlaylist => "Générer la playlist";
  String get errorPlaylist =>
      "Suite à une erreur, ta playlist n'a pas pu être généré.";
  String get successPlaylistGenerated =>
      "Ta playlist a bien été générée. Retrouve la en cliquant sur le trophée.";
  String get notEnoughMusic =>
      "Il te faut un minimum de 20 musiques pour générer une playlist dans ta Tempo Room";

  String get notEnoughPeople =>
      "Il faut qu'il y ait au minimum 2 personnes dans ta Tempo Room pour générer une playlist.";

  String get alreadyDoneToday =>
      "Tu as déjà généré une playlist aujourd'hui. Réessaye plus tard.";
  String get iWantMyTempoRoom => "Je veux créer ma Tempo Room !";
  String get linkCreateTempoRoom => "https://forms.gle/kia5gXnvFgCFstnV7";
}
