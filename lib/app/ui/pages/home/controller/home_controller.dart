import 'package:flutter_meedu/flutter_meedu.dart';

class HomeController extends SimpleNotifier {
  bool _notes = false;

  bool get notes => _notes;

  set(bool value) {
    _notes = value;
    notify(['notes']);
  }

  changeNotes() {
    _notes = !_notes;
    notify(['notes']);
  }
}
