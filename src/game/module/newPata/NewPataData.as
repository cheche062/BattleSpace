package game.module.newPata
{
	import game.global.GlobalRoleDataManger;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.global.util.TraceUtils;
	

	public class NewPataData
	{
		private static var _instance:NewPataData;
		/**
		 *当前打过的关卡id 
		 */
		public var passId:Number = 0;
		public function NewPataData()
		{
			if(_instance){				
				throw new Error("NewPataData是单例,不可new.");
			}
			_instance = this;
		}
		public static function get intance():NewPataData
		{
			if(_instance)
				return _instance;
			_instance = new NewPataData;
			return _instance;
		}
		public function init():void
		{
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.FIGHTING_RESULTS_CONST), this, onServerResult);
		}
		
		private function onServerResult(... args):void
		{
			switch(args[0])
			{
				case ServiceConst.FIGHTING_RESULTS_CONST:
				{
					TraceUtils.log("爬塔推送:"+JSON.stringify(args));
					TraceUtils.log("args[1]:"+JSON.stringify(args[1]));
					var uid:* = GlobalRoleDataManger.instance.userid;
					TraceUtils.log("stage:"+args[1][uid]["stage"]);
					if(args[1][uid]["stage"])//如果已经通关,才有这个属性
					{
						passId = args[1][uid]["stage"];
						TraceUtils.log("passId:"+passId);
					}else
					{
						passId = 0;
					}
				}
			}
		}
	}
}