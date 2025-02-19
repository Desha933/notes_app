import 'package:hive/hive.dart';
part 'note_model.g.dart';

//generate type adpter and this your file name "note_model.g.dart"
//type id unique per model (0 - 255)

@HiveType(typeId: 1)
class NoteModel extends HiveObject {
  //field id unique per class
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
