import 'dart:core';
import 'package:conan_app/src/screens/building_costs/domain/building_costs_domain.dart';


final List<BuildingCostsModel> tier1Buildings = [
  BuildingCostsModel("Sandstone", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/68/Icon_Foundation-1.png/revision/latest?cb=20170201232220"),
  BuildingCostsModel("Flotsam", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/9/9c/Icon_salvage_foundation.png/revision/latest?cb=20230402195802"),
];


final List<BuildingCostsModel> tier2Buildings = [
  BuildingCostsModel("Stone Brick", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/e/e2/Icon_t2_foundation.png/revision/latest?cb=20180507221438"),
  BuildingCostsModel("Insulated Wood", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/8/8f/Icon_tier2_foundation_highlands.png/revision/latest?cb=20180507221653"),
];


final List<BuildingCostsModel> tier3Buildings = [
  BuildingCostsModel("Reinforced Stone", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/27/Icon_t3_foundation.png/revision/latest?cb=20180507221526"),
  BuildingCostsModel("Black Ice-Reinforced", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/2e/Icon_tier3_foundation_highlands.png/revision/latest?cb=20180507221746"),
];