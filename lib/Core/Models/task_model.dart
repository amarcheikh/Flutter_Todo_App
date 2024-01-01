import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  final String title;
  final String id;
  final bool termine;
  final Timestamp datefin;
  final Timestamp datedebut;
  final String description;

  Task(this.title, this.description, this.id, this.termine, this.datefin,
      this.datedebut);

  Task.fromSnapshot(DocumentSnapshot snapshot)
      : id = snapshot.id,
        title = snapshot['title'],
        termine = snapshot['termine'],
        datefin = snapshot['fin'],
        datedebut = snapshot['debut'],
        description = snapshot['description'];
}
