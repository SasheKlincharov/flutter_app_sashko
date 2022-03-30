

import 'package:flutter_app_sashko/models/list_item.dart';

class HealthWidget {
  ListItem item;
  Type type;

  HealthWidget({required this.item, required this.type});
}

enum Type {
  CALCULATOR,
  FOODS
}