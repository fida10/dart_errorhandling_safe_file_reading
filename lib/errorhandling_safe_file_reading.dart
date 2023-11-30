/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:io';

export 'src/errorhandling_safe_file_reading_base.dart';

/*
Question:

Write a function readFileContent(String filename) that attempts to read content
from a file with the given filename.

Handle the FileSystemException if the file is not found, and return a default message "File not found".

If any other exception occurs, rethrow it.
 */

Future<String> readFileContent(String filename) async {
  try {
    return await File(filename).readAsString();
  } on FileSystemException {
    return "File not found";
  } catch (e) {
    rethrow;
  }
}
