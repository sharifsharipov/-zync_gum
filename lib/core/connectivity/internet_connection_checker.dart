part of 'network_info.dart';

class AddressCheckResult {
  const AddressCheckResult(
    this.options, {
    required this.isSuccess,
  });

  final AddressCheckOptions options;
  final bool isSuccess;

  @override
  String toString() => 'AddressCheckResult($options, $isSuccess)';
}

class AddressCheckOptions {
  const AddressCheckOptions({
    this.address,
    this.hostname,
    this.port = InternetConnectionChecker.defaultPort,
    this.timeout = InternetConnectionChecker.defaultTimeout,
  }) : assert(
          (address != null || hostname != null) &&
              ((address != null) != (hostname != null)),
          'Either address or hostname must be provided, but not both.',
        );

  final InternetAddress? address;
  final String? hostname;
  final int port;
  final Duration timeout;

  @override
  String toString() => 'AddressCheckOptions($address, $port, $timeout)';
}

enum InternetConnectionStatus {
  connected,
  disconnected,
}

class InternetConnectionChecker {
  factory InternetConnectionChecker() => _instance;

  InternetConnectionChecker.createInstance({
    this.checkTimeout = defaultTimeout,
    this.checkInterval = defaultInterval,
    List<AddressCheckOptions>? addresses,
  }) {
    this.addresses = addresses ??
        defaultAddresses
            .map(
              (e) => AddressCheckOptions(
                address: e.address,
                hostname: e.hostname,
                port: e.port,
                timeout: checkTimeout,
              ),
            )
            .toList();

    _statusController
      ..onListen = _maybeEmitStatusUpdate
      ..onCancel = () {
        _timerHandle?.cancel();
        _lastStatus = null;
      };
  }

  static const int defaultPort = 53;

  static const Duration defaultTimeout = Duration(seconds: 10);

  static const Duration defaultInterval = Duration(seconds: 10);

  static final List<AddressCheckOptions> defaultAddresses =
      List<AddressCheckOptions>.unmodifiable(
    <AddressCheckOptions>[
      AddressCheckOptions(
        address: InternetAddress(
          '1.1.1.1',
          type: InternetAddressType.IPv4,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '2606:4700:4700::1111',
          type: InternetAddressType.IPv6,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '8.8.4.4',
          type: InternetAddressType.IPv4,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '2001:4860:4860::8888',
          type: InternetAddressType.IPv6,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '208.67.222.222',
          type: InternetAddressType.IPv4,
        ),
      ),
      AddressCheckOptions(
        address: InternetAddress(
          '2620:0:ccc::2',
          type: InternetAddressType.IPv6,
        ),
      ),
    ],
  );

  late List<AddressCheckOptions> _addresses;

  List<AddressCheckOptions> get addresses => _addresses;

  set addresses(List<AddressCheckOptions> value) {
    _addresses = List<AddressCheckOptions>.unmodifiable(value);
    unawaited(_maybeEmitStatusUpdate());
  }

  static final InternetConnectionChecker _instance =
      InternetConnectionChecker.createInstance();

  Future<AddressCheckResult> isHostReachable(
    AddressCheckOptions options,
  ) async {
    Socket? sock;
    try {
      sock = await Socket.connect(
        options.address ?? options.hostname,
        options.port,
        timeout: options.timeout,
      )
        ..destroy();
      return AddressCheckResult(
        options,
        isSuccess: true,
      );
    } on Exception catch (_) {
      sock?.destroy();
      return AddressCheckResult(
        options,
        isSuccess: false,
      );
    }
  }

  Future<bool> get hasConnection async {
    final Completer<bool> result = Completer<bool>();
    int length = addresses.length;

    for (final AddressCheckOptions addressOptions in addresses) {
      isHostReachable(addressOptions).then(
        (request) {
          length -= 1;
          if (!result.isCompleted) {
            if (request.isSuccess) {
              result.complete(true);
            } else if (length == 0) {
              result.complete(false);
            }
          }
        },
      );
    }

    return result.future;
  }

  Future<InternetConnectionStatus> get connectionStatus async =>
      await hasConnection
          ? InternetConnectionStatus.connected
          : InternetConnectionStatus.disconnected;

  final Duration checkInterval;
  final Duration checkTimeout;

  Future<void> _maybeEmitStatusUpdate([
    Timer? timer,
  ]) async {
    _timerHandle?.cancel();
    timer?.cancel();

    final InternetConnectionStatus currentStatus = await connectionStatus;

    if (_lastStatus != currentStatus && _statusController.hasListener) {
      _statusController.add(currentStatus);
    }

    if (!_statusController.hasListener) {
      return;
    }
    _timerHandle = Timer(checkInterval, _maybeEmitStatusUpdate);

    _lastStatus = currentStatus;
  }

  InternetConnectionStatus? _lastStatus;
  Timer? _timerHandle;

  final StreamController<InternetConnectionStatus> _statusController =
      StreamController<InternetConnectionStatus>.broadcast();

  Stream<InternetConnectionStatus> get onStatusChange =>
      _statusController.stream;

  bool get hasListeners => _statusController.hasListener;

  bool get isActivelyChecking => _statusController.hasListener;
}
