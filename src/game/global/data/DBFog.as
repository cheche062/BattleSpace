package game.global.data
{
	import game.common.ResourceManager;
	import game.common.ToolFunc;
	import game.module.mainui.FogInfoVo;

	/**
	 * DBFog 迷雾配置
	 * author:huhaiming
	 * DBFog.as 2017-4-11 上午10:26:48
	 * version 1.0
	 *
	 */
	public class DBFog
	{
		/**资源迷雾配置*/
		public static var _data_res:Array;
		/**功能迷雾配置*/
		public static var _data_fun:Array;
		
		public function DBFog()
		{
			
		}
		
		/**功能区  需要锁住的迷雾信息列表*/
		public static function getFunctionNeedLockFogInfos(fogId:int):Array {
			return data_fun.filter(function(item:FogInfoVo) {
				return item.id > fogId;
			});
		}
		
		/**资源区  需要锁住的迷雾信息列表*/
		public static function getResourceNeedLockFogInfos(fogId:int):Array {
			return data_res.filter(function(item:FogInfoVo) {
				return item.id > fogId;
			});
		}
		
		/**功能     迷雾信息*/
		public static function getFunctionFogInfo(fogId:int):FogInfoVo {
			return ToolFunc.find(data_fun, function(item:FogInfoVo) {
				return item.id == fogId;
			});
		}
		
		/**资源     迷雾信息*/
		public static function getResourceFogInfo(fogId:int):FogInfoVo {
			return ToolFunc.find(data_res, function(item:FogInfoVo) {
				return item.id == fogId;
			});
		}
		
		/**将迷雾区的点用x，y区分开且去重*/
		public static function getDiffUniqFogInfoPos(infos:Array):Array {
			var xArr:Array = infos.map(function(item:FogInfoVo) {
				return item.coord_1.x;
			});
			var yArr:Array = infos.map(function(item:FogInfoVo) {
				return item.coord_1.y;
			});
			xArr = ToolFunc.unique(xArr);
			yArr = ToolFunc.unique(yArr);
			
			return [xArr, yArr];
		}
		
		/***/
		public static function get maxFogId():Number{
			return 9;
			var max:Number = 0;
//			for(var i:String in data){
//				max = Math.max(max, parseInt(i));
//			}
//			return max
		}
		
		/**功能区   最大迷雾长度*/
		public static function getFunMaxLength():int {
			return data_fun.length;
		}
		
		/**资源区   最大迷雾长度*/
		public static function getResMaxLength():int {
			return data_res.length;
		}
		
		private static function get data_fun():Array{
			if(!_data_fun){
				var d = ResourceManager.instance.getResByURL("config/base_fog_fun.json");
				_data_fun = ToolFunc.objectValues(d).map(function(item) {
					return new FogInfoVo(item);
				});
			}
			return _data_fun;
		}
		
		private static function get data_res():Array{
			if(!_data_res){
				var d = ResourceManager.instance.getResByURL("config/base_fog_res.json");
				_data_res = ToolFunc.objectValues(d).map(function(item) {
					return new FogInfoVo(item);
				});
			}
			return _data_res;
		}
	}
}