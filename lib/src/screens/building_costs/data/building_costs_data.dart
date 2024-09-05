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




//Building Costs lists for every building tier and category
//T1 Buildings
final List<Costs> sandstoneT1Building = [
  Costs("Sandstone Foundation\nStone: 27\nWood: 4", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/68/Icon_Foundation-1.png/revision/latest?cb=20170201232220"),
  Costs("Sandstone Wall\nStone: 14\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/40/Icon_wall-1.png/revision/latest?cb=20180508022339"),
  Costs("Sandstone Ceiling\nStone: 21\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/32/Icon_ceiling_-1.png/revision/latest?cb=20180507204718"),
  Costs("Sandstone Frame\nStone: 18\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/4a/Icon_window_wall-1.png/revision/latest?cb=20180508022405"),
  Costs("Sandstone Doorframe\nStone: 18\nWood: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/3c/Icon_door_wall-1.png/revision/latest?cb=20180507210026"),
  Costs("Simple Wooden Door\nWood: 25\nTwine: 5", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/0/00/Icon_t1_door.png/revision/latest?cb=20180507221405"),
];

final List<Costs> flotsamT1Building = [
  Costs("Flotsam Foundation\nWood: 35\nStone: 5", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/9/9c/Icon_salvage_foundation.png/revision/latest?cb=20230402195802"),
  Costs("Flotsam Wall\nWood: 18\nStone: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/1/11/Icon_salvage_wall.png/revision/latest?cb=20230402195931"),
  Costs("Flotsam Ceiling\nWood: 18\nStone: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/66/Icon_salvage_ceiling.png/revision/latest?cb=20230402200040"),
  Costs("Flotsam Frame\nWood: 18\nStone: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/c/cf/Icon_salvage_window_wall.png/revision/latest?cb=20230402200449"),
  Costs("Flotsam Doorframe\nWood: 18\nStone: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/35/Icon_salvage_door_frame.png/revision/latest?cb=20230402200052"),
  Costs("Flotsam Door\nWood: 25\nTwine: 5", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/a/ab/Icon_salvage_door.png/revision/latest?cb=20230402200514"),
];

//Tier 2 Buildings
final List<Costs> stoneBrickT2Building = [
  Costs("Stonebrick Foundation\nBrick: 10\nShaped Wood: 4\nIron Reinforcement: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/e/e2/Icon_t2_foundation.png/revision/latest?cb=20180507221438"),
  Costs("Stonebrick Wall\nBrick: 5\nShaped Wood: 2\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/1/12/Icon_t2_wall.png/revision/latest?cb=20180507221459"),
  Costs("Stonebrick Ceiling\nBrick: 6\nShpaed Wood: 3\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/1/10/Icon_t2_ceiling.png/revision/latest?cb=20180507221431"),
  Costs("Stonebrick Frame\nBrick: 5\nShaped Wood: 2\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/b/b3/Icon_t2_windowWall.png/revision/latest?cb=20180507221512"),
  Costs("Stonebrick Doorframe\nBrick: 5\nShaped Wood: 2\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/66/Icon_t2_doorFrame.png/revision/latest?cb=20180507221434"),
  Costs("Reinforced Wooden Door\nShaped Wood: 4\nIron Reinforcement: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/43/Icon_t2_door.png/revision/latest?cb=20180507221432"),
];

final List<Costs> insulatedWoodT2Building = [
  Costs("Insulated Wooden Foundation\nInsulated Wood: 6\nIron Reinforcement: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/8/8f/Icon_tier2_foundation_highlands.png/revision/latest?cb=20180507221653"),
  Costs("Insulated Wooden Wall\nInsulated Wood: 3\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/8/84/Icon_tier2_wall_highlands.png/revision/latest?cb=20180507221735"),
  Costs("Insulated Wooden Ceiling\nInsulated Wood: 4\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/a/ad/Icon_tier2_ceiling_highlands.png/revision/latest?cb=20180507221648"),
  Costs("Insulated Wooden Frame\nInsulated Wood: 3\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/3/34/Icon_tier2_wall_window_highlands.png/revision/latest?cb=20180507221740"),
  Costs("Insulated Wooden Doorframe\nInsulated Wood: 3\nIron Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/d/d0/Icon_tier2_wall_frame_highlands.png/revision/latest?cb=20180507221734"),
  Costs("Insulated Wooden Door\nInsulated Wood: 6\nIron Reinforcement: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/9/9f/Icon_tier2_door_highlands.png/revision/latest?cb=20180507221650"),
];

//Tier 3 Buildings
final List<Costs> reinforcedStoneT3Building = [
  Costs("Reinforced Stone Foundation\nHardened Brick: 10\nShaped Wood: 4\nSteel Reinforcement: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/27/Icon_t3_foundation.png/revision/latest?cb=20180507221526"),
  Costs("Reinforced Stone Wall\nHardened Brick: 5\nShaped Wood: 2\nSteel Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/4/45/Icon_t3_wall.png/revision/latest?cb=20180507221549"),
  Costs("Reinforced Stone Ceiling\nHardened Brick: 6\nShaped Wood: 3\nSteel Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/63/Icon_t3_ceiling.png/revision/latest?cb=20180507221519"),
  Costs("Reinforced Stone Frame\nHardened Brick: 5\nShaped Wood: 2\nSteel Reinforcement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/21/Icon_t3_windowWall.png/revision/latest?cb=20180507221558"),
  Costs("Reinforced Stone Doorframe\nHardened Brick: 5\nShaped Wood: 2\nSteel Reinfrocement: 2", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/0/03/Icon_t3_doorFrame.png/revision/latest?cb=20180507221522"),
  Costs("Heavy Reinforced Door\nShaped Wood: 4\nSteel Reinforcement: 3", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/e/ed/Icon_t3_door.png/revision/latest?cb=20180507221521"),
];

final List<Costs> blackIceReinforcedT3Building = [
  Costs("Black Ice-Reinforced Wooden Foundation\nInsulted Wood: 6\nSteel Reinforcement: 3\nBlack Ice: 15", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/2/2e/Icon_tier3_foundation_highlands.png/revision/latest?cb=20180507221746"),
  Costs("Black Ice-Reinforced Wooden Wall\nInsulated Wood: 3\nSteel Reinforcement: 2\nBlack Ice: 8", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/62/Icon_tier3_wall_highlands.png/revision/latest?cb=20180507221831"),
  Costs("Black Ice-Reinforced Wooden Ceiling\nInsulated Wood: 4\nSteel Reinforcement: 2\nBlack Ice: 9", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/5/55/Icon_tier3_ceiling_highlands.png/revision/latest?cb=20180507221741"),
  Costs("Black Ice-Reinforced Wooden Frame\nInsulated Wood: 3\nSteel Reinforcement: 2\nBlack Ice: 8", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/6/69/Icon_tier3_wall_window_highlands.png/revision/latest?cb=20180507221403"),
  Costs("Black Ice-Reinforced Wooden Doorframe\nInsulated Wood: 3\nSteel Reinforcement: 2\nBlack Ice: 8", "https://static.wikia.nocookie.net/conanexiles_gamepedia/images/0/0b/Icon_tier3_wall_frame_highlands.png/revision/latest?cb=20180507221830"),
  Costs("Black Ice-Reinforced Wooden Door\nInsulated Wood: 6\nSteel Reinforcement: 3\nBlack Ice: 15", ""),
];