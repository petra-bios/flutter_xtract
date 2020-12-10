import 'package:flutter/material.dart';
import 'package:flutter_xtract/data/event_type.dart';
import 'package:flutter_xtract/track/hcid_tracking.dart';

class TextfieldTrackable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(labelText: 'Tracker'),
        onEditingComplete: () {
          HCIDTracking.instance.addEvent(EventType.FIELD_TIME_ENDED);
        },
        onChanged: (value) {
          HCIDTracking.instance.addEvent(EventType.FIELD_TYPING_TEXT);
        },
      ),
    );
  }
}
