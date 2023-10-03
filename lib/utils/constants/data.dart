import '../../models/service.dart';
import '../../models/user.dart';
import '../../models/wallet.dart';
import 'assets.dart';

final workers = [
  "Tobi Lateef",
  "Queen Needle",
  "Joan Blessing",
  "Fomo Koma",
  "Iss Verbalon",
];

final jobs = [
  "Product designer",
  "Frontend",
  "Visual designer",
  "Voyager",
];

final services = [
  Service(),
  Service(name: "Others", image: Assets.other),
];

final user = User(profession: "House Manager");
final wallet = Wallet();
