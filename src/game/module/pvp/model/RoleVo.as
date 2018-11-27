package game.module.pvp.model
{
	public class RoleVo
	{
		/**	匹配到的对手 */		
		public var targetUid:int;
		
		
		/**	自身的 */		
		public var topUnit:int;
		
		public var name:String;
		
		public var tokenNumber:int;
		/**	战力 */
		public var power:int;
		/**	段位 */
		public var grade:int;
		/**	战胜次数 */	
		public var winTimes:int;
		/**	积分 */
		public var integral:int;
		/**	匹配消耗图片id */		
		public var consItemId:int;
		/**	匹配的消耗 */		
		public var consume:int;
		
		public function RoleVo()
		{
		}
		
		public function paser(value:Object):void
		{
			if(value)
			{
				if( value.hasOwnProperty("targetUid") && value.targetUid != null )
					targetUid = value.targetUid;
				if( value.hasOwnProperty("topUnit") && value.topUnit != null )
					topUnit = value.topUnit;
				if( value.hasOwnProperty("tokenNumber") )
					tokenNumber = value.tokenNumber;
				if( value.hasOwnProperty("power") )
					power = value.power;
				if( value.hasOwnProperty("grade") )
					grade = value.grade;
				if( value.hasOwnProperty("winTimes") )
					winTimes = value.winTimes;
				if( value.hasOwnProperty("integral") )
					integral = value.integral;
				if( value.hasOwnProperty("name") )
					name = value.name;
			}
		}
		
		/**
		 * 用于清理对手信息
		 */		
		public function clear():void
		{
			topUnit = power = grade = winTimes = integral = 0;
			name = "";
			
		}
	}
}