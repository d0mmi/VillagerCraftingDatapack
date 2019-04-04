import 'package:objd/core.dart';
import './ItemSelector.dart';

class VillagerProfession{

  static const VillagerProfession farmer = VillagerProfession("minecraft:farmer", Block.composter);
  static const VillagerProfession fisherman = VillagerProfession("minecraft:fisherman", Block.barrel);
  static const VillagerProfession shepherd = VillagerProfession("minecraft:shepherd", Block.loom);
  static const VillagerProfession fletcher = VillagerProfession("minecraft:fletcher", Block.fletching_table);
  static const VillagerProfession cleric = VillagerProfession("minecraft:cleric", Block.brewing_stand);
  static const VillagerProfession weaponsmith = VillagerProfession("minecraft:weaponsmith", Block.grindstone);
  static const VillagerProfession armorer = VillagerProfession("minecraft:armorer", Block.blast_furnace);
  static const VillagerProfession toolsmith = VillagerProfession("minecraft:toolsmith", Block.smithing_table);
  static const VillagerProfession librarian = VillagerProfession("minecraft:librarian", Block.lectern);
  static const VillagerProfession cartographer = VillagerProfession("minecraft:cartographer", Block.cartography_table);
  static const VillagerProfession leatherworker = VillagerProfession("minecraft:leatherworker", Block.cauldron);
  static const VillagerProfession butcher = VillagerProfession("minecraft:butcher", Block.smoker);
  static const VillagerProfession mason = VillagerProfession("minecraft:mason", Block.stonecutter);

  final String profession;
  final Block workspace;
  const VillagerProfession(this.profession,this.workspace);
  @override
    String toString() {
      return profession;
    }
}

class VillagerRecipe extends Widget{

  List<Item> components;
  List<Item> results;
  List<Widget> _cmds = [];
  VillagerProfession profession;
  Range level;

  VillagerRecipe(this.components, this.results,this.profession,this.level){

    List<ItemSelector> itemSelectors = [];
    List<Condition> conditions = [];
    List<Widget> then = [];

    for (var item in components) {
      itemSelectors.add(ItemSelector(item));
    }

    for (var item in itemSelectors) {
      conditions.add(Condition.entity(Entity(playerName: item.toString())));
      then.add(Command("/kill " + item.toString()));
    }
    
    Condition workCon = Condition.or([
      Condition.block(Location.rel(x: 1, y: 0, z: 0),block: profession.workspace),
      Condition.block(Location.rel(x: -1, y: 0, z: 0),block: profession.workspace),
      Condition.block(Location.rel(x: 0, y: 0, z: 1),block: profession.workspace),
      Condition.block(Location.rel(x: 0, y: 0, z: -1),block: profession.workspace),
    ]);


    for(var item in results){
      then.add(Command("/summon minecraft:item ~ ~ ~ "+ItemSelector(item).getNBT()));
    }
    if(level.from == null || level.from == 0) level.from = 1;
    if(level.to == null || level.to == 0) level.to = level.from;
    for(int i = level.from; i <= level.to;i++){
      _cmds.add(Execute.asat(Entity(type: EntityType.villager, nbt: {"VillagerData":{"profession":profession.toString(),"level":i}}),children: [
        File.execute(path: "recipes/"+profession.toString().substring(10)+i.toString(), child: For.of([
          If(workCon, assignTag: Entity(selector: 's'), Then: [
            If(Condition.and(conditions),assignTag: Entity(selector: 's'),Then: then)
          ])]))
      ]));
    }
  }

  @override
  generate(Context context) {

    return For.of(_cmds);
  }

}