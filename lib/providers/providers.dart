import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'location_provider.dart';

List<SingleChildWidget> providers = [
  ...independentProviders
];

List<SingleChildWidget> independentProviders = [
  ChangeNotifierProvider<LocationProvider>(
      create: (_) => LocationProvider()),
];