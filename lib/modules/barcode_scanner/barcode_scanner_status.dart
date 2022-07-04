class BarcodeScannerStatus {
  final bool isCameraAvailabe;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeScannerStatus({
    this.isCameraAvailabe = false,
    this.error = "",
    this.barcode = "",
    this.stopScanner = false,
  });

  factory BarcodeScannerStatus.available() => (BarcodeScannerStatus(
        isCameraAvailabe: true,
        stopScanner: false,
      ));

  factory BarcodeScannerStatus.error(String message) => (BarcodeScannerStatus(
        error: message,
        stopScanner: true,
      ));

  factory BarcodeScannerStatus.barcode(String barcode) => (BarcodeScannerStatus(
        barcode: barcode,
        stopScanner: true,
      ));

  bool get showCamera => isCameraAvailabe && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
