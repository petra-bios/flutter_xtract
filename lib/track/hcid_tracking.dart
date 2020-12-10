import 'package:flutter_xtract/data/event_type.dart';
import 'package:flutter_xtract/track/event/event_tracker.dart';

class HCIDTracking {
  static HCIDTracking instance = new HCIDTracking();

  EventTracker eventTracker = EventTracker();

  List<EventType> eventList = [];
  final _accessToken = '';

  bool enableLogging = false;
  bool enableCleverTap = true;
  String baseURL = "http://";

  static HCIDTracking getInstance() {
    return instance;
  }

  HCIDTracking({bool enableLogging, bool enableCleverTap, String baseURL}) {
    this.enableLogging = enableLogging;
    this.enableCleverTap = enableCleverTap;
    this.baseURL = baseURL;
  }

  addEvent(EventType event) {
    // Add event to the event list
    eventTracker.addEvent(event);
  }

  addAction() {
    // Add action to the action map
  }

  sendEvents() {
    // Send event to xtract Service
  }

  startTracking() {
    // Start timer to track how long user is in the page/screen
    // Put this in initState
  }

  stopTracking() {
    // Stop timer to track how long user is in the page/screen
    // Put this in onDestroy
  }
}
