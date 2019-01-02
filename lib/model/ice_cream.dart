import 'package:meta/meta.dart';

@immutable
class IceCream {
  final String name;
  final String image;

  const IceCream({@required this.name, @required this.image});
}
