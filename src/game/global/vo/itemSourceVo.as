package game.global.vo
{
	import game.common.ResourceManager;

	import game.module.fighting.mgr.FightingStageManger;

	public class itemSourceVo
	{
		public var id:Number = 0;
		public var type:Number = 0;
		public var icon:String;
		public var des:String;
		public var state:Number = 1;
		private var _params:Array;
		
		public static var maxParam:Number = 10;
		
		public function itemSourceVo()
		{
			for (var i:int = 1; i <= maxParam; i++) 
			{
				this["param"+i] = null;
			}
		}
		
		public function get params():Array{
			if(!_params)
			{
				_params = [];
				for (var i:int = 1; i <= maxParam; i++) 
				{
					_params.push(this["param"+i]);
				}
			}
			return _params;
		}
		
		/*
		 * 
		1 大本营 L_A_400 HQ
		2 石材厂 L_A_402 Alloy Plant
		3 钢材厂 L_A_404 Titanium Mine
		4 黄金厂 L_A_406 Stellar Dollar Mint
		5 食物厂 L_A_408 Hydroponic Farm
		6 石材仓库 L_A_410 Alloy Smithy
		7 钢材仓库 L_A_412 Titanium Smithy
		8 黄金仓库 L_A_414 Treasury
		9 食物仓库 L_A_416 Ration Storage
		10 兵营 L_A_418 Army Camp
		11 宝箱 L_A_420 Exploration Tower
		12 训练营 L_A_422 Barracks
		13 运镖 L_A_424 Transport Docks
		14 基地互动 L_A_426 Defense HQ
		15 旅馆 L_A_428 Bar
		16 工会 L_A_430 Guild
		17 基因室 L_A_432 Gene Lab
		18 雷达站 L_A_434 Radar Station
		19 商店 L_A_436 Hypermarket
		20 资源争夺 L_A_484 Mining Ship
		21 竞技场 L_A_481 Reapers' Field
		22 实时pvp L_A_487 Killing Zone
		23 组队pve L_A_490 Team Hunting
		24 面包厂 L_A_501 Bakehouse
		25 面包仓库 L_A_504 Bread Warehouse
		100 机枪塔 L_A_438 MG Tower
		101 迫击炮 L_A_440 Mortar
		102 瞭望塔 L_A_442 Watchtower
		103 防空火箭 L_A_444 AA Gun
		104 自动机枪塔 L_A_446 Targeting Tower
		105 电磁塔 L_A_448 Tesla Coil
		106 巨炮 L_A_450 Cannon
		107 地图炮 L_A_480 Most powerful weapon
		200 凯旋门 L_A_493 triumphal arch
		201 摩天轮 L_A_494 Ferris Wheel
		
		
		*/
		
		public function changeState():void
		{
			switch(type)
			{
				case 1:  //主线 ：章节ID ， 关卡ID
				case 2: //精英：章节ID ， 关卡ID
					var b:Boolean = FightingStageManger.intance.levelIsF(Number(params[1]), type == 2);
					state = b ? 1 : 0;	
					break;
				case 3: //抽卡
					break;
				
				case 4: //商城
					state = User.getInstance().sceneInfo.getBuildingLv("19") >= 1;
					break;
				case 5: //基因副本
					var data = ResourceManager.instance.getResByURL("config/convict_param.json");
					var lvArr = data["2"]["value"].split("=");
					
					state = User.getInstance().sceneInfo.getBuildingLv(lvArr[0]) >= lvArr[1];
					
					break;
				case 6: //雷达
					state = User.getInstance().sceneInfo.getBuildingLv("18") >= 1;
					
					break;
				case 7: //武器副本
					var data = ResourceManager.instance.getResByURL("config/galaxy_param.json");
					var lvArr = data["3"]["value"].split("=");
					
					state = User.getInstance().sceneInfo.getBuildingLv(lvArr[0]) >= lvArr[1];
					
					break;
				case 8: //运镖
					state = User.getInstance().sceneInfo.getBuildingLv("13") >= 1;
					break;
				case 9: //运营活动：活动ID
					break;
				case 10: //爬塔玩法：活动ID，直接从基地进入，退出后到基地
					var data = ResourceManager.instance.getResByURL("config/pvepata_config.json");
					var lvArr = data["2"]["value"].split("=");
					
					state = User.getInstance().sceneInfo.getBuildingLv(lvArr[0]) >= lvArr[1];
					
					break;
				case 11: //竞技场				
					state = User.getInstance().sceneInfo.getBuildingLv("21") >= 1;
					break;
				case 12: //组队副本				
					state = User.getInstance().sceneInfo.getBuildingLv("23") >= 1;
					break;
				case 13: //矿场
					var data = ResourceManager.instance.getResByURL("config/mine/mine_fight_param.json");
					var lvArr = data["1"]["value"].split("=");
					
					state = User.getInstance().sceneInfo.getBuildingLv(lvArr[0]) >= lvArr[1];
					
					break;
				case 14: // 军团
					var juntuan_data = ResourceManager.instance.getResByURL("config/juntuan/juntuan_canshu.json");
					var needBaseLv = Number(juntuan_data["72"].value);
					var buildInfo:Array = juntuan_data["74"].value.split("=");
					if (User.getInstance().level < needBaseLv
						|| User.getInstance().sceneInfo.getBuildingLv(buildInfo[0]) < buildInfo[1]) {
						state = 0;
					} else {
						state = 1;
					}
					
					break;
				
				case 15: // 扫雷
					var data = ResourceManager.instance.getResByURL("config/maze/maze_param.json");
					var lvArr = data["1"]["value"].split("=");
					
					state = User.getInstance().sceneInfo.getBuildingLv(lvArr[0]) >= lvArr[1];
					
					break;
		}
	}
}