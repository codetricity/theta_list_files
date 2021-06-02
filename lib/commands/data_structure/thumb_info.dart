import 'dart:typed_data';

class ThumbInfo {
  final Uint8List thumbBytes;
  final String url;
  final String name;

  ThumbInfo({required this.thumbBytes, required this.url, required this.name});
}
