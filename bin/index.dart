import 'package:objd/core.dart';
import './VillagerRecipe.dart';

void main(){
	createProject(
		Project(
			name:"villagercrafting",
			target:"./",
			generate: VillagerWidget(),
      description: "{\"pack\": {\"pack_format\": 1, \"description\": \"Villager Crafting Datapack by D0mmi\"}}"
		)
	);
}

class VillagerWidget extends Widget {

	@override
	Widget generate(Context context){

    //Farmer
    VillagerRecipe([Item(ItemType.wheat,count: 3)], [Item(ItemType.bread,count: 1)], VillagerProfession.farmer, Range(from: 1));
    VillagerRecipe([Item(ItemType.wheat,count: 3),Item(ItemType.milk_bucket,count: 3),Item(ItemType.sugar,count: 2),Item(ItemType.egg,count: 1)], [Item(Block.cake,count: 1),Item(ItemType.bucket,count: 3),], VillagerProfession.farmer, Range(from: 2));
    //Fisherman
    VillagerRecipe([Item(ItemType.dried_kelp,count: 9)], [Item(Block.dried_kelp_block,count: 1)], VillagerProfession.fisherman, Range(from: 1));
    //Shepherd 
    VillagerRecipe([Item(ItemType.string,count: 4)], [Item(Block.white_wool,count: 1)], VillagerProfession.shepherd, Range(from: 1));
    //Fletcher 
    VillagerRecipe([Item(ItemType.string,count: 3),Item(ItemType.stick,count: 3)], [Item(ItemType.bow,count: 1)], VillagerProfession.fletcher, Range(from: 1));
    VillagerRecipe([Item(ItemType.flint,count: 1),Item(ItemType.stick,count: 1),Item(ItemType.feather,count: 1)], [Item(ItemType.arrow,count: 4)], VillagerProfession.fletcher, Range(from: 1));
    VillagerRecipe([Item(ItemType.arrow,count: 1),Item(ItemType.glowstone_dust,count: 4)], [Item(ItemType.spectral_arrow,count: 2)], VillagerProfession.fletcher, Range(from: 2));
    //Cleric 
    VillagerRecipe([Item(ItemType.slime_ball,count: 1),Item(ItemType.blaze_powder,count: 1)], [Item(ItemType.magma_cream,count: 1)], VillagerProfession.cleric, Range(from: 1));
    //Weaponsmith 
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.acacia_planks,count: 2)], [Item(ItemType.wooden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.birch_planks,count: 2)], [Item(ItemType.wooden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.dark_oak_planks,count: 2)], [Item(ItemType.wooden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.jungle_planks,count: 2)], [Item(ItemType.wooden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.oak_planks,count: 2)], [Item(ItemType.wooden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.spruce_planks,count: 2)], [Item(ItemType.wooden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 1));

    VillagerRecipe([Item(ItemType.stick,count: 1),Item(Block.cobblestone,count: 2)], [Item(ItemType.stone_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 2));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(Block.cobblestone,count: 3)], [Item(ItemType.stone_axe,count: 1)], VillagerProfession.weaponsmith, Range(from: 2));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(ItemType.iron_ingot,count: 2)], [Item(ItemType.iron_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 3));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.iron_ingot,count: 3)], [Item(ItemType.iron_axe,count: 1)], VillagerProfession.weaponsmith, Range(from: 3));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(ItemType.gold_ingot,count: 2)], [Item(ItemType.golden_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 4));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.gold_ingot,count: 3)], [Item(ItemType.golden_axe,count: 1)], VillagerProfession.weaponsmith, Range(from: 4));
    VillagerRecipe([Item(ItemType.stick,count: 1),Item(ItemType.diamond,count: 2)], [Item(ItemType.diamond_sword,count: 1)], VillagerProfession.weaponsmith, Range(from: 5));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.diamond,count: 3)], [Item(ItemType.diamond_axe,count: 1)], VillagerProfession.weaponsmith, Range(from: 5));
    //Armorer 
    VillagerRecipe([Item(ItemType.iron_ingot,count: 5)], [Item(ItemType.iron_helmet,count: 1)], VillagerProfession.armorer, Range(from: 1));
    VillagerRecipe([Item(ItemType.iron_ingot,count: 8)], [Item(ItemType.iron_chestplate,count: 1)], VillagerProfession.armorer, Range(from: 1));
    VillagerRecipe([Item(ItemType.iron_ingot,count: 7)], [Item(ItemType.iron_leggings,count: 1)], VillagerProfession.armorer, Range(from: 1));
    VillagerRecipe([Item(ItemType.iron_ingot,count: 4)], [Item(ItemType.iron_boots,count: 1)], VillagerProfession.armorer, Range(from: 1));
    
    VillagerRecipe([Item(Block.iron_bars,count: 5)], [Item(ItemType.chainmail_helmet,count: 1)], VillagerProfession.armorer, Range(from: 2));
    VillagerRecipe([Item(Block.iron_bars,count: 8)], [Item(ItemType.chainmail_chestplate,count: 1)], VillagerProfession.armorer, Range(from: 2));
    VillagerRecipe([Item(Block.iron_bars,count: 7)], [Item(ItemType.chainmail_leggings,count: 1)], VillagerProfession.armorer, Range(from: 2));
    VillagerRecipe([Item(Block.iron_bars,count: 4)], [Item(ItemType.chainmail_boots,count: 1)], VillagerProfession.armorer, Range(from: 2));
    
    VillagerRecipe([Item(ItemType.gold_ingot,count: 5)], [Item(ItemType.golden_helmet,count: 1)], VillagerProfession.armorer, Range(from: 3));
    VillagerRecipe([Item(ItemType.gold_ingot,count: 8)], [Item(ItemType.golden_chestplate,count: 1)], VillagerProfession.armorer, Range(from: 3));
    VillagerRecipe([Item(ItemType.gold_ingot,count: 7)], [Item(ItemType.golden_leggings,count: 1)], VillagerProfession.armorer, Range(from: 3));
    VillagerRecipe([Item(ItemType.gold_ingot,count: 4)], [Item(ItemType.golden_boots,count: 1)], VillagerProfession.armorer, Range(from: 3));
    
    VillagerRecipe([Item(ItemType.diamond,count: 5)], [Item(ItemType.diamond_helmet,count: 1)], VillagerProfession.armorer, Range(from: 4));
    VillagerRecipe([Item(ItemType.diamond,count: 8)], [Item(ItemType.diamond_chestplate,count: 1)], VillagerProfession.armorer, Range(from: 4));
    VillagerRecipe([Item(ItemType.diamond,count: 7)], [Item(ItemType.diamond_leggings,count: 1)], VillagerProfession.armorer, Range(from: 4));
    VillagerRecipe([Item(ItemType.diamond,count: 4)], [Item(ItemType.diamond_boots,count: 1)], VillagerProfession.armorer, Range(from: 4));

    VillagerRecipe([Item(ItemType.scute,count: 5)], [Item(ItemType.turtle_helmet,count: 1)], VillagerProfession.armorer, Range(from: 5));
    //Toolsmith 
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(Block.cobblestone,count: 1)], [Item(ItemType.stone_shovel,count: 1)], VillagerProfession.toolsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(Block.cobblestone,count: 2)], [Item(ItemType.stone_hoe,count: 1)], VillagerProfession.toolsmith, Range(from: 1));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(Block.cobblestone,count: 3)], [Item(ItemType.stone_pickaxe,count: 1)], VillagerProfession.toolsmith, Range(from: 1));

    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.iron_ingot,count: 1)], [Item(ItemType.iron_shovel,count: 1)], VillagerProfession.toolsmith, Range(from: 2));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.iron_ingot,count: 2)], [Item(ItemType.iron_hoe,count: 1)], VillagerProfession.toolsmith, Range(from: 2));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.iron_ingot,count: 3)], [Item(ItemType.iron_pickaxe,count: 1)], VillagerProfession.toolsmith, Range(from: 2));

    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.gold_ingot,count: 1)], [Item(ItemType.golden_shovel,count: 1)], VillagerProfession.toolsmith, Range(from: 3));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.gold_ingot,count: 2)], [Item(ItemType.golden_hoe,count: 1)], VillagerProfession.toolsmith, Range(from: 3));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.gold_ingot,count: 3)], [Item(ItemType.golden_pickaxe,count: 1)], VillagerProfession.toolsmith, Range(from: 3));

    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.diamond,count: 1)], [Item(ItemType.diamond_shovel,count: 1)], VillagerProfession.toolsmith, Range(from: 4));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.diamond,count: 2)], [Item(ItemType.diamond_hoe,count: 1)], VillagerProfession.toolsmith, Range(from: 4));
    VillagerRecipe([Item(ItemType.stick,count: 2),Item(ItemType.diamond,count: 3)], [Item(ItemType.diamond_pickaxe,count: 1)], VillagerProfession.toolsmith, Range(from: 4));
    //Librarian 
    VillagerRecipe([Item(ItemType.paper,count: 3),Item(ItemType.leather,count: 1)], [Item(ItemType.book,count: 1)], VillagerProfession.librarian, Range(from: 1));
    //Cartographer 
    VillagerRecipe([Item(ItemType.compass,count: 1),Item(ItemType.paper,count: 8)], [Item(ItemType.map,count: 1)], VillagerProfession.cartographer, Range(from: 1));
    //Leatherworker 
    VillagerRecipe([Item(ItemType.leather,count: 5)], [Item(ItemType.leather_helmet,count: 1)], VillagerProfession.leatherworker, Range(from: 1));
    VillagerRecipe([Item(ItemType.leather,count: 8)], [Item(ItemType.leather_chestplate,count: 1)], VillagerProfession.leatherworker, Range(from: 1));
    VillagerRecipe([Item(ItemType.leather,count: 7)], [Item(ItemType.leather_leggings,count: 1)], VillagerProfession.leatherworker, Range(from: 1));
    VillagerRecipe([Item(ItemType.leather,count: 4)], [Item(ItemType.leather_boots,count: 1)], VillagerProfession.leatherworker, Range(from: 1));

    VillagerRecipe([Item(ItemType.leather,count: 5),Item(ItemType.iron_ingot,count: 2)], [Item(ItemType.saddle,count: 1)], VillagerProfession.leatherworker, Range(from: 5));
    //Butcher 
    VillagerRecipe([Item(ItemType.porkchop,count: 1)], [Item(ItemType.cooked_porkchop,count: 1)], VillagerProfession.butcher, Range(from: 1));
    //Mason‌
    VillagerRecipe([Item(Block.cobblestone,count: 6)], [Item(Block.cobblestone_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.cobblestone,count: 3)], [Item(Block.cobblestone_slab,count: 6)], VillagerProfession.mason, Range(from: 1));
    
    VillagerRecipe([Item(Block.mossy_cobblestone,count: 6)], [Item(Block.mossy_cobblestone_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.mossy_cobblestone,count: 3)], [Item(Block.mossy_cobblestone_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.stone,count: 6)], [Item(Block.stone_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.stone,count: 3)], [Item(Block.stone_slab,count: 6)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.stone,count: 4)], [Item(Block.stone_bricks,count: 4)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.smooth_stone,count: 3)], [Item(Block.smooth_stone_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.stone_bricks,count: 6)], [Item(Block.stone_brick_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.stone_bricks,count: 3)], [Item(Block.stone_brick_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.mossy_stone_bricks,count: 6)], [Item(Block.mossy_stone_brick_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.mossy_stone_bricks,count: 3)], [Item(Block.mossy_stone_brick_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.diorite,count: 6)], [Item(Block.diorite_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.diorite,count: 3)], [Item(Block.diorite_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.polished_diorite,count: 6)], [Item(Block.polished_diorite_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.polished_diorite,count: 3)], [Item(Block.polished_diorite_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.andesite,count: 6)], [Item(Block.andesite_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.andesite,count: 3)], [Item(Block.andesite_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.polished_andesite,count: 6)], [Item(Block.polished_andesite_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.polished_andesite,count: 3)], [Item(Block.polished_andesite_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.granite,count: 6)], [Item(Block.granite_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.granite,count: 3)], [Item(Block.granite_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.polished_granite,count: 6)], [Item(Block.polished_granite_stairs,count: 4)], VillagerProfession.mason, Range(from: 1));
    VillagerRecipe([Item(Block.polished_granite,count: 3)], [Item(Block.polished_granite_slab,count: 6)], VillagerProfession.mason, Range(from: 1));

    VillagerRecipe([Item(Block.quartz_block,count: 6)], [Item(Block.quartz_stairs,count: 4)], VillagerProfession.mason, Range(from: 2));
    VillagerRecipe([Item(Block.quartz_block,count: 3)], [Item(Block.quartz_slab,count: 6)], VillagerProfession.mason, Range(from: 2));

    VillagerRecipe([Item(Block.nether_bricks,count: 6)], [Item(Block.nether_brick_stairs,count: 4)], VillagerProfession.mason, Range(from: 2));
    VillagerRecipe([Item(Block.nether_bricks,count: 3)], [Item(Block.nether_brick_slab,count: 6)], VillagerProfession.mason, Range(from: 2));

    VillagerRecipe([Item(Block.red_nether_bricks,count: 6)], [Item(Block.red_nether_brick_stairs,count: 4)], VillagerProfession.mason, Range(from: 2));
    VillagerRecipe([Item(Block.red_nether_bricks,count: 3)], [Item(Block.red_nether_brick_slab,count: 6)], VillagerProfession.mason, Range(from: 2));

    VillagerRecipe([Item(Block.end_stone_bricks,count: 6)], [Item(Block.end_stone_brick_stairs,count: 4)], VillagerProfession.mason, Range(from: 3));
    VillagerRecipe([Item(Block.end_stone_bricks,count: 3)], [Item(Block.end_stone_brick_slab,count: 6)], VillagerProfession.mason, Range(from: 3));

    
    List<Widget> recipes = [];
    for (var profession in VillagerProfession.professions) {
      recipes.add(profession.getRecipes());
    }

		return Pack(
		name: "villagercrafting",
		main: File(
			'main',
      child: For.of(recipes)
		),
    load: File(
      'load',
      child: For.of([
        Tellraw(Entity.All(),show: [TextComponent("Villager Crafting v1.4 by ",color: Color.Gold),TextComponent("D0mmi",color: Color.Aqua,clickEvent: TextClickEvent.open_url("https://github.com/d0mmi")),TextComponent(" Loaded!",color: Color.Gold)]),
        Tellraw(Entity.All(),show: [TextComponent("Submit Bugs or Suggestions ",color: Color.Gold),TextComponent("here!",color: Color.Aqua,clickEvent: TextClickEvent.open_url("https://github.com/d0mmi/VillagerCraftingDatapack/issues/new"))]),
      ])
    )
	);
	}
}
