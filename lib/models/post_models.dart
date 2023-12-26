import 'package:hive/hive.dart';

part 'post_models.g.dart';

@HiveType(typeId: 1)
class PostModel extends HiveObject {
  @HiveField(0)
  //Hivefield id  in brackets
  final  int id;
  @HiveField(1)
  final int userId;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String body;
  PostModel({
    required this.body,
    required this.id,
    required this.userId,
    required this.title,
  });
}
