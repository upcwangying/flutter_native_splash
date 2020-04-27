class NoConfigFoundException implements Exception {
  const NoConfigFoundException([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'NoConfigFoundException\n'
        '$message';
  }
}

class InvalidConfigException implements Exception {
  const InvalidConfigException([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'InvalidConfigException\n'
        '$message';
  }
}

class NoImageFileFoundException implements Exception {
  const NoImageFileFoundException([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'NoImageFileFoundException\n'
        '$message';
  }
}

class CantFindMainActivityPath implements Exception {
  const CantFindMainActivityPath([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'CantFindMainActivityPath\n'
        '$message';
  }
}

class CantFindAppDelegatePath implements Exception {
  const CantFindAppDelegatePath([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'CantFindAppDelegatePath\n'
        '$message';
  }
}

class InvalidNativeFile implements Exception {
  const InvalidNativeFile([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'InvalidNativeFile\n'
        '$message';
  }
}

class LaunchScreenStoryboardModified implements Exception {
  const LaunchScreenStoryboardModified([this.message]);
  final String message;

  @override
  String toString() {
    return '*** ERROR [flutter_splash_countdown] ***\n'
        'LaunchScreenStoryboardModified\n'
        '$message';
  }
}
