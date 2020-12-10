import 'package:flutter_xtract/data/event_type.dart';
import 'package:flutter_xtract/track/hcid_tracking.dart';

import '../hcid_tracking.dart';

class EventTracker {
  addEvent(EventType event) {
    HCIDTracking.getInstance().eventList.add(event);
  }

  clearEvents() {
    HCIDTracking.getInstance().eventList.clear();
  }
}
