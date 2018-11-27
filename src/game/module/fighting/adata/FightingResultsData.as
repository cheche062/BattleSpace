/***
 *作者：罗维
 */
package game.module.fighting.adata
{
	import game.global.GameConfigManager;
	import game.global.data.bag.ItemData;
	import game.global.util.TraceUtils;
	import game.global.vo.ItemVo;

	public class FightingResultsData
	{
		public var isWin:Boolean;  //胜负 ？
		public var reward:Array ;  //奖励
		public var checkpointData:Object;  //关卡信息
		public var soldierData:Array;  //士兵信息
		public var turnCard:Object ;  //抽奖
		public var type:String; //类型
		
		public var hp:Number = 0; 
		public var hurt:Number = 0;
		public var id:Number = 0;
		public var maxHp:Number = 0;
		public var cup:Number = 0;
		public var old_cup:Number = 0;
		//竞技场数据
		public var newRank:Number = 0;
		public var oldRank:Number = 0;
		public var point:Number; //竞技场积分
		
		//pvp数据
		public var integral:Number = 0;  //当前积分
		public var addIntegral:Number = 0; //增加积分
		public var upgrades:Number = 0 ;  //是否升级
		public var gradesRewards:Array; //段位升级奖励
		public var fightRewards:Number = 0; //积分奖励
		public var newGrades:int = 0;//当前段位
		
		//
		public var rate:*;
		
		
		public static var TYPE_STAGE:String = "stage";
		public static var TYPE_ELITE:String = "elite";
		public static var TYPE_ARENA:String = "arena";
		public static var TYPE_GUILD_BOSS:String = "guild_boss";
		public static var TYPE_BASEROB:String = "baseRob";
		public static var TYPE_MINE:String = "mine_fight";
		public static var TYPE_PVP:String = "pvp";
		public static var TYPE_BAGUA:String = "lunhuan_bagua";
	
		public function FightingResultsData()
		{
		}
		
		public function setData(obje:Object):void
		{
			if(!obje)
				return ;
			
			isWin = Boolean(obje.isWin);
			if(obje.hasOwnProperty("type"))
			{
				type = obje.type;
			}
			
			if(obje.hasOwnProperty("hp"))
			{
				hp = Number(obje.hp);
			}
			
			if(obje.hasOwnProperty("hurt"))
			{
				hurt = Number(obje.hurt);
			}
			
			if(obje.hasOwnProperty("id"))
			{
				id = Number(obje.id);
			}
			
			if(obje.hasOwnProperty("maxHp"))
			{
				maxHp = Number(obje.maxHp);
			}
			
			if(obje.hasOwnProperty("cup"))
			{
				cup = Number(obje.cup);
			}
			
			if(obje.hasOwnProperty("old_cup"))
			{
				old_cup = Number(obje.old_cup);
			}
			
			//竞技场
			if(obje.hasOwnProperty("point"))
			{
				point = Number(obje.point);
			}
			if(obje.hasOwnProperty("rank"))
			{
				newRank = Number(obje.rank.newRank);
				oldRank = Number(obje.rank.oldRank);
			}
			
			//pvp
			if(obje.hasOwnProperty("integral"))
			{
				integral = Number(obje.integral);
			}
			if(obje.hasOwnProperty("addIntegral"))
			{
				addIntegral = Number(obje.addIntegral);
			}
			if(obje.hasOwnProperty("upgrades"))
			{
				upgrades = Number(obje.upgrades);
			}
			if(obje.hasOwnProperty("rate"))
			{
				rate = obje.rate;
			}
			if(obje.hasOwnProperty("newGrades"))
			{
				newGrades = obje.newGrades;
			}
			
			gradesRewards = [];
			var i:int = 0;
			if(obje.hasOwnProperty("gradesRewards"))
			{
				for (i = 0; i < obje.gradesRewards.length; i++) 
				{
					var _id:Object = obje.gradesRewards[i];
					var ivo:ItemVo = GameConfigManager.items_dic[_id.id];
					if(ivo)
					{
						var idata:ItemData = new ItemData();
						idata.iid = ivo.id;
						idata.inum = Number(_id.num);
						gradesRewards.push(idata);
					}
				}
			}
			
			if(obje.hasOwnProperty("fightRewards"))
			{
				fightRewards = Number(obje.fightRewards[0].num);
			}
			
			reward = [];
			var i:int = 0;
			if(obje.hasOwnProperty("rewards"))
			{
				for (i = 0; i < obje.rewards.length; i++) 
				{
					var _id:Object = obje.rewards[i];
					var ivo:ItemVo = GameConfigManager.items_dic[_id.id];
					if(ivo)
					{
						var idata:ItemData = new ItemData();
						idata.iid = ivo.id;
						idata.inum = Number(_id.num);
						reward.push(idata);
					}
				}
			}
			soldierData = [];
			if(obje.hasOwnProperty("soldier"))
			{
				for (i = 0; i < obje.soldier.length; i++) 
				{
					var sdata:Object = obje.soldier[i];
					var sod:frSoldierData = new frSoldierData();
					sod.addExp = Number(sdata.addExp);
					sod.uid = Number(sdata.id);
					sod.uExp = Number(sdata.exp);
					sod.uLev = Number(sdata.level);
					sod.uNum = Number(sdata.surplus);
					sod.uMaxNum = Number(sdata.total);	
					soldierData.push(sod);
				}
			}
			if(obje.hasOwnProperty("task"))
			{
				checkpointData = obje.task;
			}
			
			turnCard = obje.turnCard;
			
			TraceUtils.log("解析战斗结算");
		}
		
		public function get rType():Number{
			if(type && type == TYPE_ARENA)
				return 3;
			if(type && type == TYPE_GUILD_BOSS)
				return 4;
			if(type && type == TYPE_BASEROB)
				return 5;
			if(type && (type == TYPE_STAGE || type == TYPE_ELITE))
				return 1;
			if(type && type == TYPE_PVP)
				return 6;
			return 2;
		}
		
	}
}