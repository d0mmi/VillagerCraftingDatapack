import 'package:objd/core.dart';
import './VillagerRecipe.dart';

void main(){
	createProject(
		Project(
			name:"villagercrafting",
			target:"../",
			generate: VillagerWidget(),
      description: "{\"pack\": {\"pack_format\": 1, \"description\": \"Villager Crafting\"}}"
		)
	);
}

class VillagerWidget extends Widget {

	@override
	Widget generate(Context context){

    List<Widget> recipes = [];
    //Farmer
    recipes.add(VillagerRecipe([Item(ItemType.wheat,count: 3)], [Item(ItemType.bread,count: 1)], VillagerProfession.farmer, Range(from: 1,to: 1)));
    //Fisherman
    recipes.add(VillagerRecipe([Item(ItemType.dried_kelp,count: 9)], [Item(Block.dried_kelp_block,count: 3)], VillagerProfession.fisherman, Range(from: 1,to: 1)));
    //Shepherd 
    recipes.add(VillagerRecipe([Item(ItemType.string,count: 9)], [Item(Block.white_wool,count: 1)], VillagerProfession.shepherd, Range(from: 1,to: 1)));
    //Fletcher 
    recipes.add(VillagerRecipe([Item(ItemType.string,count: 3),Item(ItemType.stick,count: 3)], [Item(ItemType.bow,count: 1)], VillagerProfession.fletcher, Range(from: 1,to: 1)));
    //Cleric 
    recipes.add(VillagerRecipe([Item(ItemType.slime_ball,count: 1),Item(ItemType.blaze_powder,count: 1)], [Item(ItemType.magma_cream,count: 1)], VillagerProfession.cleric, Range(from: 1,to: 1)));
    //Weaponsmith 
    recipes.add(VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.cobblestone,count: 2)], [Item(ItemType.stone_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1,to: 1)));
    //Armorer 
    recipes.add(VillagerRecipe([Item(ItemType.iron_ingot,count: 8)], [Item(ItemType.iron_chestplate,count: 1)], VillagerProfession.armorer, Range(from: 1,to: 1)));
    //Toolsmith 
    recipes.add(VillagerRecipe([Item(ItemType.stick,count: 2),Item(Block.cobblestone,count: 3)], [Item(ItemType.stone_pickaxe,count: 1)], VillagerProfession.toolsmith, Range(from: 1,to: 1)));
    //Librarian 
    recipes.add(VillagerRecipe([Item(ItemType.paper,count: 3),Item(ItemType.leather,count: 1)], [Item(ItemType.book,count: 1)], VillagerProfession.librarian, Range(from: 1,to: 1)));
    //Cartographer 
    recipes.add(VillagerRecipe([Item(ItemType.compass,count: 1),Item(ItemType.paper,count: 8)], [Item(ItemType.map,count: 1)], VillagerProfession.cartographer, Range(from: 1,to: 1)));
    //Leatherworker 
    recipes.add(VillagerRecipe([Item(ItemType.leather,count: 8)], [Item(ItemType.leather_chestplate,count: 1)], VillagerProfession.leatherworker, Range(from: 1,to: 1)));
    //Butcher 
    recipes.add(VillagerRecipe([Item(ItemType.porkchop,count: 1)], [Item(ItemType.cooked_porkchop,count: 1)], VillagerProfession.butcher, Range(from: 1,to: 1)));
    //Mason‌
    recipes.add(VillagerRecipe([Item(Block.cobblestone,count: 1)], [Item(Block.cobblestone_stairs,count: 1)], VillagerProfession.mason, Range(from: 1,to: 1)));

		return Pack(
		name: "villagercrafting",
		main: File(
			path: 'main',
      child: For.of(recipes)
		),
    load: File(
      path: 'load',
      child: For.of([
        Log("Villager Crafting by Dommi Loaded!")
      ])
    )
	);
	}
}