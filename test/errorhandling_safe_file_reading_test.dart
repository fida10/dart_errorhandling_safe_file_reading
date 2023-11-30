import 'package:errorhandling_safe_file_reading/errorhandling_safe_file_reading.dart';
import 'package:test/test.dart';

void main() {
  test('readFileContent returns file content for existing file', () async {
    // Assuming 'existing.txt' is a test file you have set up
    var content = await readFileContent('existing.txt');
    expect(content, isNotNull);
  });

  test('readFileContent handles FileSystemException for non-existing file', () {
    expect(readFileContent('nonexisting.txt'),
        completion(equals('File not found')));
  });
}
