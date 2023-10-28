class NoticeBoardModel {
  int? id;
  String? title;
  String? writer;
  int? view;
  String? contents;
  String? createdAt;
  String? updatedAt;

  NoticeBoardModel(
      {this.id,
      this.title,
      this.writer,
      this.view,
      this.contents,
      this.createdAt,
      this.updatedAt});

  NoticeBoardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    writer = json['writer'];
    view = json['view'];
    contents = json['contents'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['writer'] = writer;
    data['view'] = view;
    data['contents'] = contents;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
