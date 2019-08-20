import 'package:objd/core.dart';
import './ItemSelector.dart';

class VillagerProfession{

  static VillagerProfession farmer = VillagerProfession("minecraft:farmer", Block.composter);
  static VillagerProfession fisherman = VillagerProfession("minecraft:fisherman", Block.barrel);
  static VillagerProfession shepherd = VillagerProfession("minecraft:shepherd", Block.loom);
  static VillagerProfession fletcher = VillagerProfession("minecraft:fletcher", Block.fletching_table);
  static VillagerProfession cleric = VillagerProfession("minecraft:cleric", Block.brewing_stand);
  static VillagerProfession weaponsmith = VillagerProfession("minecraft:weaponsmith", Block.grindstone);
  static VillagerProfession armorer = VillagerProfession("minecraft:armorer", Block.blast_furnace);
  static VillagerProfession toolsmith = VillagerProfession("minecraft:toolsmith", Block.smithing_table);
  static VillagerProfession librarian = VillagerProfession("minecraft:librarian", Block.lectern);
  static VillagerProfession cartographer = VillagerProfession("minecraft:cartographer", Block.cartography_table);
  static VillagerProfession leatherworker = VillagerProfession("minecraft:leatherworker", Block.cauldron);
  static VillagerProfession butcher = VillagerProfession("minecraft:butcher", Block.smoker);
  static VillagerProfession mason = VillagerProfession("minecraft:mason", Block.stonecutter);
  static List<VillagerProfession> professions = [];

  final String profession;
  final Block workspace;
  List<Widget> professionRecipes = [];
  int recipecount = 1;
  VillagerProfession(this.profession,this.workspace){
    professions.add(this);
  }

  Widget getRecipes(){
    String professionName = profession.toString().substring(10);
    return Execute.asat(Entity(type: EntityType.villager, nbt: {"VillagerData":{"profession":profession.toString()}}),children: [
      File.execute("recipes/"+professionName+"/main",child: For.of(professionRecipes))
      ]);
  }

  @override
    String toString() {
      return profession;
    }
}
class VillagerRecipe{

  List<Item> components;
  List<Item> results;
  VillagerProfession profession;
  Range level;
  static int recipecount = 1;

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
    if(level.to == null || level.to == 0) level.to = 5;

    String professionName = profession.toString().substring(10);
    for(int i = level.from; i <= level.to;i++){
      profession.professionRecipes.add(
          Execute.asat(Entity.Selected(nbt: {"VillagerData":{"level":i}}),children: [
            File.execute("recipes/"+professionName+"/"+i.toString()+"/"+professionName+profession.recipecount.toString(), child: For.of([
              If(workCon, assignTag: Entity(selector: 's'), Then: [
                If(Condition.and(conditions),assignTag: Entity(selector: 's'),Then: then)
          ])]))
          ]));
      profession.recipecount++;
    }
  }

}