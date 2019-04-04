import 'package:objd/core.dart';

class ItemSelector {

  Item item;
  Range range;
  String _selector;
  ItemSelector(this.item,{this.range}){
    if(range == null) range = Range(to: 1);
    _selector = '@e[distance='+range.toString()+',type=item,nbt={"Item":{"id":"'+item.type.toString()+'","Count":'+item.count.toString()+'b}}]';
  }

  String getNBT(){
    return '{"Item":{"id":"'+item.type.toString()+'","Count":'+item.count.toString()+'b}}';
  }
  String getInventoryNBT(int slot){
    return '{"Slot": '+slot.toString()+'b,"id":"'+item.type.toString()+'","Count":'+item.count.toString()+'b}';
  }

   @override
  String toString() {
    return _selector;
  } 
}