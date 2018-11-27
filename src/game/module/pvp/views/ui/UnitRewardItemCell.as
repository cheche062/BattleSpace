package game.module.pvp.views.ui
{
	import MornUI.pvpFight.ItemCellUI;
	
	import game.global.data.bag.ItemCell;
	import game.global.data.bag.ItemData;
	
	public class UnitRewardItemCell extends ItemCellUI
	{
		private var itemC:ItemCell = new ItemCell();
		
		public function UnitRewardItemCell()
		{
			super();
		}
		
		override protected function createChildren():void 
		{
			super.createChildren();
			this.addChild(itemC);
			itemC.pos(p1.x , p1.y);
			p1.removeSelf();
		}
		
		public override function set dataSource(value:*):void
		{
			super.dataSource = value;
			if(value)
			{
				var arr:Array = value.split("=");
				var child:ItemData = new ItemData();
				child.iid = arr[0];
				child.inum = arr[1];
				
				itemC.dataSource = child;
			}
		}
		
		public override function destroy(destroyChild:Boolean=true):void
		{
			super.destroy(destroyChild);
			itemC.removeSelf();
			itemC.destroy();
			itemC = null;
		}
	}
}