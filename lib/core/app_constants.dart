/// [AppConstants]
class AppConstants {
  static String argLongCoverage = 'coverage';
  static String argLongExcludeSuffix = 'exclude-suffix';
  static String argLongLog = 'log';
  static String argLongHelp = 'help';
  static String argLongPackageName = 'package-name';

  static String argShortCoverage = 'c';
  static String argShortExcludeSuffix = 'e';
  static String argShortLog = 'l';
  static String argShortHelp = 'h';
  static String argShortPackageName = 'p';

  static String falseAsStringValue = 'false';
  static String excludeSuffixDefaultValue = '.g.dart,.freezed.dart,.part.dart';
  static String lcovPathDefaultValue = 'coverage/lcov.info';

  static String dlcovLogFile = './dlcov.log';
  static int maxLogLines = 1000;
  static String fileSystemExceptionMessage = '\nSomething went wrong!\n\n';

  static String dlcovFileReferences = 'test/dlcov_references_test.dart';

  static String sourceDirectory = 'lib';
}
