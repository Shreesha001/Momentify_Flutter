import 'package:flutter/material.dart';
import 'package:instagram_flutter/screens/add_post_screen.dart';
import 'package:instagram_flutter/screens/feed_screen.dart';
import 'package:instagram_flutter/screens/search_screen.dart';

const webScreenSize = 600;

const HomeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text('NOTIFICATION'),
  Text('PROFILE'),
];
