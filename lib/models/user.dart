import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String username;
  final String uid;
  final String email;
  final String bio;
  final String photoUrl;
  final List followers;
  final List following;

  const User({
    required this.username,
    required this.uid,
    required this.email,
    required this.bio,
    required this.photoUrl,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJason() => {
    'username': username,
    'uid': uid,
    'email': email,
    'bio': bio,
    'photoUrl': photoUrl,
    'followers': followers,
    'following': following,
  };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      username: snapshot['username'],
      bio: snapshot['bio'],
      email: snapshot['email'],
      uid: snapshot['uid'],
      photoUrl: snapshot['photoUrl'],
      followers:
          snapshot['followers'] != null ? List.from(snapshot['followers']) : [],
      following:
          snapshot['following'] != null ? List.from(snapshot['following']) : [],
    );
  }
}
