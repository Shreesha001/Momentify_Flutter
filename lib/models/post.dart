import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String username;
  final String uid;
  final String description;
  final datePublished;
  final String postId;
  final String postUrl;
  final String profImage;
  final likes;

  const Post({
    required this.username,
    required this.uid,
    required this.description,
    required this.datePublished,
    required this.postId,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJason() => {
    'username': username,
    'uid': uid,
    'description': description,
    'datePublished': datePublished,
    'postId': postId,
    'postUrl': postUrl,
    'profImage': profImage,
    'likes': likes,
  };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      datePublished: snapshot['datePublished'],
      postId: snapshot['postId'],
      likes: snapshot['likes'],
      profImage: snapshot['profImage'],
      postUrl: snapshot['postUrl'],
    );
  }
}
