import 'package:flutter/material.dart';

class ChatMessage {
  final String name;
  final String initials;
  final String text;
  final bool bot;

  AnimationController animationController;

  ChatMessage(
      {this.name,
      this.initials,
      this.text,
      this.bot = false,
      this.animationController});
}