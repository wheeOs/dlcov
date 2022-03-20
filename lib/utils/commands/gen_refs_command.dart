import 'dart:io';

import 'package:args/command_runner.dart';

import '../../core/app_constants.dart';
import '../../entities/config.dart';
import '../../usecases/create_file_references.dart';

class GenRefsCommand extends Command {
  final Config config;
  final CreateFileReferences createFileReferences;

  @override
  final name = 'gen-refs';
  @override
  final description =
      'Generate tested and untested file references, it should be used before generate lcov.info file';

  GenRefsCommand({
    required this.config,
    required this.createFileReferences,
  }) {
    argParser.addOption(AppConstants.argLongPackageName,
        abbr: AppConstants.argShortPackageName,
        defaultsTo: null,
        mandatory: false);
  }

  /// excute run createFileReferences
  @override
  void run() async {
    await createFileReferences();
    exit(0);
  }
}
