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





final List<Costs> sandstone = [
  Costs("Sandstone Foundation\nStone: 27\nWood: 4", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/68/Icon_Foundation-1.png/revision/latest?cb=20170201232220"),
  Costs("Sandstone Wall\nStone: 14\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/40/Icon_wall-1.png/revision/latest?cb=20180508022339"),
  Costs("Sandstone Ceiling\nStone: 21\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/32/Icon_ceiling_-1.png/revision/latest?cb=20180507204718"),
  Costs("Sandstone Frame\nStone: 18\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/4a/Icon_window_wall-1.png/revision/latest?cb=20180508022405"),
  Costs("Sandstone Doorframe\nStone: 18\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/3c/Icon_door_wall-1.png/revision/latest?cb=20180507210026"),
  Costs("Simple Wooden Door\nWood: 25\nTwine: 5", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/0/00/Icon_t1_door.png/revision/latest?cb=20180507221405"),
];