package game.common
{
	import laya.events.EventDispatcher;
	
	public class Data extends EventDispatcher
	{
		public var data:*;
		
		public function init(value:*):void
		{
			for each (var val:String in value) 
			{
				addValue(val, value[val]);
			}
		}
		
		private function addValue(key:String,value:*):void
		{
			this[key] = value;
		}
	}
}