import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import '../../app/app.dart';
import '../../injection/dependency_injection.dart';

late final Logger logger;

Future<void> initializeLogger() async {
  final logFile = await _getLogFile(resolve());
  logger = Logger(
      filter: ProductionFilter(),
      printer: _AppPrinter(),
      output: MultiOutput(
          [ConsoleOutput(), if (logFile != null) FileOutput(file: logFile)]),
      level: Level.all);
}

Future<File?> _getLogFile(Environment env) async {
  try {
    final appDocDir = await getApplicationDocumentsDirectory();
    final logDirectory = Directory(path.join(appDocDir.path, 'logs'));
    if (!logDirectory.existsSync()) {
      logDirectory.createSync(recursive: true);
    }
    final logFile = File(
        path.join(logDirectory.path, '${env.appName}_${env.appVersion}.log'));
    if (!logFile.existsSync()) {
      logFile.createSync();
    }
    return logFile;
  } catch (e) {
    debugPrint('Error creating log file: $e');
    return null;
  }
}

class _AppPrinter extends PrettyPrinter {
  static final levelPrefixes = {
    Level.trace: '[T]',
    Level.debug: '[Debug]',
    Level.info: '[Info]',
    Level.warning: '[WARNING]',
    Level.error: '[ERROR]',
    Level.fatal: '[FATAL]',
  };

  String _getTime(DateTime time) {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    return formatter.format(time);
  }

  @override
  List<String> log(LogEvent event) {
    var messageStr = _stringifyMessage(event.message);
    var errorStr = event.error != null ? '  ERROR: ${event.error}' : '';
    var timeStr = _getTime(event.time);
    String? stackTraceStr;
    if (event.error != null) {
      if ((errorMethodCount == null || errorMethodCount! > 0)) {
        stackTraceStr = formatStackTrace(
          event.stackTrace ?? StackTrace.current,
          errorMethodCount,
        );
      }
    } else {
      stackTraceStr = formatStackTrace(
        event.stackTrace ?? StackTrace.current,
        2,
      )?.split('\n').elementAt(1);
    }
    final String? emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    return [
      '${_labelFor(event.level)} $timeStr\n$stackTraceStr \n$emoji $messageStr$errorStr'
    ];
  }

  String _labelFor(Level level) {
    var prefix = levelPrefixes[level]!;

    return prefix;
  }

  String _stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      var encoder = const JsonEncoder.withIndent(null);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}
