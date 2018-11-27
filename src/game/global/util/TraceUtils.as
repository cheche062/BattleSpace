package game.global.util 
{
	import game.global.GameSetting;
	
	/**
	 * ...
	 * @author Demon
	 */
	public class TraceUtils 
	{
		/**
		 * Debug输出
		 * @param  ...arg
		 */
		public static function log(...arg):void
		{
//			if(!GameSetting.IsRelease)
//			{
//				if( !GameSetting.isApp )
//				{
					for (var i:int = 0; i < arg.length; i++) 
					{
						trace(arg[i]);
					}
//				}
//			}
			
//			if (param[0] == 1 || param.length == 0)
//			{
//				
//				trace("========================");
//			}
//			
//			var length:int = 0;
//			
//			if (param.length == 1) {
//				length = param[0];
//			}
//			
//			var tab:String = '';
//			for (var i:int = 0; i < length; i++) {
//				tab += '	';
//			}
//			
//			if(typeof obj == "string" || typeof obj == "number" || typeof obj == "boolean")
//			{
//				
//				trace(typeof obj + ": " + obj);
//				if (param[0] == 1 || param.length == 0)
//				{
//					
//					/*Debug.log("===================================");
//					trace("===================================");*/
//				}
//				return;
//			}
//			
//			length++;
//			for (var index:* in obj)
//			{
//				if (obj[index] is String || obj[index] is Number || obj[index] is Boolean)
//				{
//					
//					trace(tab + index + ': ' + obj[index].toString());
//				}
//				else
//				{
//					trace(tab + index + ((obj[index] == null || obj[index] == undefined)?' : [Null or undefined]':' : [Object Object]'));
//					dumpTrace(obj[index], length);
//				}
//			}
//			if (param[0] == 1 || param.length == 0)
//			{
//				
//				trace("");
//			}
		}
		
		/**
		 *  优先级输出
		 * @param arg
		 * 
		 */		
		public static function firstLog(...arg):void
		{
			for (var i:int = 0; i < arg.length; i++) 
			{
				trace(arg[i]);
			}
		}
		
		public function TraceUtils() 
		{
			throw new Error("不能实例化");
		}
	}
}