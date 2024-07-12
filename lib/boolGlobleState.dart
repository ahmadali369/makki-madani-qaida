class BoolState {
  static bool oneButtonRunning = false;
  static bool oneStreamRunning = false;

  static void toggleOneButtonRunning() {
    oneButtonRunning = !oneButtonRunning;
  }

  static void toggleOneStreamRunning() {
    oneStreamRunning = !oneStreamRunning;
  }

  static void setOneButtonRunning(bool newValue) {
    oneButtonRunning = newValue;
  }

  static void setOneStreamRunning(bool newValue) {
    oneStreamRunning = newValue;
  }
}
