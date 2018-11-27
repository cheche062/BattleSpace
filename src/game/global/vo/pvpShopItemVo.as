package game.global.vo
{
	import game.module.bag.mgr.ItemManager;
	import game.module.pvp.views.PvpManager;
	import game.module.pvp.model.PvpProxy;
	
	import mvc.Facade;

	public class pvpShopItemVo
	{
		public var id:Number = 0;
		public var item:String;
		public var num:Number = 0;
		public var cost:String;
		public var condition:Number = 0;
		public var lg:String;
		
		private var _showItems:Array;
		private var _showCosts:Array ;
		
		public function pvpShopItemVo()
		{
		}
		
		
		public function get showItems():Array
		{
			if(!_showItems)
			{
				_showItems = ItemManager.StringToReward(item);
			}
			return _showItems;
		}
		
		public function get showCosts():Array
		{
			if(!_showCosts)
			{
				_showCosts = ItemManager.StringToReward(cost);
			}
			return _showCosts;
		}
		
		public function get state():Boolean
		{
			var pvpProxy:PvpProxy = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
			return condition <= pvpProxy.state;
			
		}
	}
}