package game.module.pvp.model
{
	public class IntegralItemVo
	{
		public var id:int;
		
		public var dataList:Array;
		
		/**
		 * 0不能领 1可领取 2已领取 
		 */		
		public var state:int;
		
		public var integral:int;
		
		public var num:int;
		
		public function IntegralItemVo()
		{
		}
	}
}