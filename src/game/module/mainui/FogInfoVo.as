package game.module.mainui
{
	import laya.maths.Point;

	/**基地迷雾开放数据
	 *@author hejianbo
	 *@date:  2018-11-29 上午10:37:38
	 *
	 */
	
	public class FogInfoVo
	{
		/**id*/
		public var id:Number;
		/**解锁所需等级*/
		public var level:Number;
		/**资源区坐标*/
		public var coord_1:Point = new Point();
		/**购买按钮位置*/
		public var btn_pos:Point = new Point();
		/**解锁价格*/
		public var price:Array;
		
		
		public function FogInfoVo(info)
		{
			updateValue(info);
		}
		
		/**赋值*/
		public function updateValue(info:Object):void{
			id = Number(info.id);
			level = Number(info.level);
			var p =  info.coord_1.split(",");
			coord_1.setTo(Number(p[0]), Number(p[1]));
			info.btn_pos = info.btn_pos || "0,0";
			var p2 =  info.btn_pos.split(",");
			btn_pos.setTo(Number(p2[0]), Number(p2[1]));
			
			price = info.price.split("=");
		}
	}
}