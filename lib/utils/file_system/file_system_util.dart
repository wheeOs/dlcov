import 'dart:io';

class FileSystemUtil {
  Future<File> writeToFile(String content, String path) =>
      File(path).writeAsString(content);

  Future<void> delete(String path) async {
    final file = File(path);
    if (file.existsSync()) {
      await file.delete();
    }
  }
}
