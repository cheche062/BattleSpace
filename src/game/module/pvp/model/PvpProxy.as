package game.module.pvp.model
{
	import game.common.ResourceManager;
	
	import mvc.Proxy;
	
	public class PvpProxy extends Proxy
	{
		/**	免费次数（读表） */		
		public var freeTimes:int;
		/**总匹配次数 */		
		public var matchTimes:int;
		/**	商店中的商品购买次数记录 */		
		public var shopCount:Array;
		/**	任务奖励领取情况 */		
		public var getedRewards:Array;
		/**	已完成的任务id列表*/		
		public var finishedIntegralTask:Array;
		/**	积分 */		
		public var integral:int;
		/**	总战斗次数 */		
		public var fightTimes:int;
		/**	战胜次数 */		
		public var winTimes:int;
		
		public var season:int;
		/**	攻击 ATK 攻速SPD(buff购买次数) */		
		public var buff:Array;
		/**	攻击 ATK 攻速SPD含有的buff加成 */		
		public var hasBuff:Array;
		/**	是否已领取排行榜奖励 */		
		public var rankRewards:int;
		/**	最后一次匹配到的敌人 */		
		public var targetUid:int;
		
		public var topUnit:int;
		
		public var tokenNumber:int;
		/**	战力 */		
		public var power:int;
		/**	段位 */		
		public var grade:int;
		/**	本赛季加成的英雄 */		
		public var currCardList:Array;
		/**	赛季时间 */		
		public var time:String;
		/**	本赛季英雄加成buffid,用来读表显示语言包 */		
		public var currCardBuffId:int;
		
		/**	主攻击buff购买次数 */		
		public var atkBuyCount:int;
		/**	被防御buff购买次数 */
		public var defBuyCount:int;
		/**	主攻击buff加成 */		
		public var atkAddCount:int = 0;
		/**	被防御buff加成 */
		public var defAddCount:int = 0;
		
		/**	最新的战报 */		
		public var pvp_data:Object;
		
		/**
		 * 1不能领 2能领 
		 */		
		public var state:int;
		
		public var rank:int;
		
		public var isGetRank:Boolean = false;
		
		public var isGetIntegral:Boolean = false;
		
		public var getIntegralId:int;
		
		public var myVo:RoleVo = new RoleVo();
		public var otherVo:RoleVo = new RoleVo();
		
		public function PvpProxy()
		{
			this.proxyName = "PvpProxy";
		}
		
		override public function initData():void
		{
			// TODO Auto Generated method stub
			if(!_paramConfig){
				_paramConfig = ResourceManager.instance.getResByURL("config/pvp_param.json");
			}
			
			if(!_pvpRankConfig)
			{
				_pvpRankConfig = ResourceManager.instance.getResByURL("config/pvp_rank.json");
			}
			
			if(!_costConfig)
			{
				_costConfig = ResourceManager.instance.getResByURL("config/pvp_cost.json");
			}
			
			if(!_unitConfig)
			{
				_unitConfig = ResourceManager.instance.getResByURL("config/pvp_unit.json");
			}
			
			if(!_rankRewardConfig)
			{
				_rankRewardConfig = ResourceManager.instance.getResByURL("config/pvp_rank_reward.json");
			}
			
			if(!_buffConfig)
			{
				_buffConfig = ResourceManager.instance.getResByURL("config/pvp_buff.json");
			}
			
			if(!_integralRewardConfig)
			{
				_integralRewardConfig = ResourceManager.instance.getResByURL("config/pvp_integral_reward.json");
			}
		}
		
		// -------------------   静态表数据   --------------------
		private var _paramConfig:Object;
		private function get paramConfig():Object
		{
			return _paramConfig;
		}
		
		public function getParamData(id:*):Object
		{
			for(var i:String in paramConfig)
			{
				if( paramConfig[i].id == id )
				{
					return paramConfig[i];
				}
			}
			return null;
		}
		
		private var _pvpRankConfig:Object;
		private function get pvpRankConfig():Object
		{
			return _pvpRankConfig;
		}
		
		public function getPvpRankConfig(id:*):Object
		{
			for(var i:String in pvpRankConfig)
			{
				if( pvpRankConfig[i].id == id )
				{
					return pvpRankConfig[i];
				}
			}
			return null;
		}
		
		private var _costConfig:Object;
		private function get costConfig():Object
		{
			return _costConfig;
		}
		
		public function getCostData(rank:int,match:int):Object
		{
			for(var i:String in costConfig)
			{
				if(costConfig[i].rank1 <= rank && costConfig[i].rank2 >= rank && 
					costConfig[i].down <= match && costConfig[i].up >= match )
				{
					return costConfig[i];
				}
			}
			return null;
		}
		
		private var _unitConfig:Object;
		private function get unitConfig():Object
		{
			return _unitConfig;
		}
		
		public function getUnitConfig(unitId:*):Object
		{
			for(var i:String in unitConfig)
			{
				if( unitConfig[i].unit == unitId )
				{
					return unitConfig[i];
				}
			}
			return null;
		}
		
		private var _rankRewardConfig:Object;
		private function get rankRewardConfig():Object
		{
			return _rankRewardConfig;
		}
		
		public function getRankRewardData(rank:int):Object
		{
			for(var i:String in rankRewardConfig)
			{
				if(parseInt(rankRewardConfig[i].rank1) <= rank && parseInt(rankRewardConfig[i].rank2) >= rank)
				{
					return rankRewardConfig[i];
				}
			}
			return null;
		}
		
		private var _buffConfig:Object;
		private function get buffConfig():Object
		{
			return _buffConfig;
		}
		
		public function getBuffData(type:*,count:int):Object
		{
			for(var i:String in buffConfig)
			{
				if(buffConfig[i].type == type && buffConfig[i].down <= count && buffConfig[i].up >= count)
				{
					return buffConfig[i];
				}
			}
			return null;
		}
		
		public function getBuffTypeTotalCount(type:*):int
		{
			var arr:Array = [];
			for(var i:String in buffConfig)
			{
				if(buffConfig[i].type == type)
				{
					arr.push(buffConfig[i]);
				}
			}
			arr.sort(sortUp);
			return arr[arr.length-1].up;
		}
		
		private function sortUp(obj1:Object,obj2:Object):int
		{
			return obj1.up - obj2.up;
		}
		
		private var _integralRewardConfig:Object;
		private function get integralRewardConfig():Object
		{
			return _integralRewardConfig;
		}
		
		public function getIntegralRewardData(id:int):Object
		{
			for(var i:String in integralRewardConfig)
			{
				if(parseInt(integralRewardConfig[i].id) == id )
				{
					return integralRewardConfig[i];
				}
			}
			return null;
		}
		
		public function getIntegralReward():Array
		{
			var arr:Array = [];
			for(var i:String in integralRewardConfig)
			{
				var vo:IntegralItemVo = createVo(integralRewardConfig[i]);
				arr.push(vo);
			}
			
			return arr;
		}
		
		private function createVo(value:Object):IntegralItemVo
		{
			var vo:IntegralItemVo = new IntegralItemVo();
			vo.id = value.id;
			vo.integral = value.integral;
			vo.state = checkState(vo.id);
			if( value.reward.indexOf("|") != -1 )
			{
				vo.dataList = value.reward.split("|");
			}
			else
			{
				vo.dataList = [];
				vo.dataList.push(value.reward);
			}
			return vo;
		}
		
		public function checkState(id:*):int
		{
			var index:int = parseInt(id);
			var state:int;
			var getState:int = getedRewards.indexOf(index) != -1 ? 2 : 1;
			var finishState:int = finishedIntegralTask.indexOf(index) != -1 ? 1 : 0;
			if( finishState == 0 )
			{
				state = 0;
			}
			else
			{
				if( getState == 1 )
				{
					state = 1;
				}
				else
				{
					state = 2;
				}
			}
			
			return state;
		}
		
		public var rewardNum:int;
		public function checkBtnPoint():Boolean
		{
			rewardNum = 0;
			var array:Array = getIntegralReward();
			for (var i:int = 0; i < array.length; i++) 
			{
				var vo:IntegralItemVo = array[i];
				if(vo.state == 1)
				{
					rewardNum += 1;
				}
			}
			var state:Boolean = rewardNum > 0 ? true : false;
			return state;
		}
		
		/**
		 * 检测排行榜红点 
		 * @return 
		 * 
		 */		
		public function checkRankHPoint():Boolean
		{
			var obj:Object = getRankRewardData(rank);
			if( !obj )
			{
				return false;
			}
			
			var vstate:Boolean;
			if( state == 1 )
			{
				vstate = false;
			}
			else
			{
				if( rankRewards == 1 )
				{
					vstate = false;
				}
				else
				{
					vstate = true;
				}
			}
			return vstate;
		}
		
		//以下是服务器填充的信息
		
		public function updata(values:Object):void
		{
			freeTimes = getParamData(5).value;
			if( values )
			{
				var object_:Object = values[1];//其它
				var unitCardObj:Object = values[2];//time,units
				
				if( object_.hasOwnProperty("matchTimes") )
					this.matchTimes = object_.matchTimes;
				else
					this.matchTimes = 0;
				if( object_.hasOwnProperty("shopCount") )
					this.shopCount = object_.shopCount;
				if( object_.hasOwnProperty("getedRewards") )
					this.getedRewards = object_.getedRewards;
				if( object_.hasOwnProperty("finishedIntegralTask") )
					this.finishedIntegralTask = object_.finishedIntegralTask;
					
				if( object_.hasOwnProperty("integral") )
					this.integral = object_.integral;
				if( object_.hasOwnProperty("fightTimes") )
					this.fightTimes = object_.fightTimes;
				if( object_.hasOwnProperty("winTimes") )
					this.winTimes = object_.winTimes;
				if( object_.hasOwnProperty("season") )
					this.season = object_.season;
				
				updataBuff(values);
				
				if( object_.hasOwnProperty("rankRewards") )
					this.rankRewards = object_.rankRewards;
				if( object_.hasOwnProperty("targetUid") )
					this.targetUid = object_.targetUid;
				if( object_.hasOwnProperty("topUnit") )
					this.topUnit = object_.topUnit;
				if( object_.hasOwnProperty("tokenNumber") )
					this.tokenNumber = object_.tokenNumber;
				if( object_.hasOwnProperty("power") )
					this.power = object_.power;
				if( object_.hasOwnProperty("grade") )
					this.grade = object_.grade;
				if( object_.hasOwnProperty("rank") )
					this.rank = object_.rank;
				
				myVo.paser(object_);
				var tempTimes:int = freeTimes - matchTimes > 0 ? freeTimes - matchTimes : matchTimes - freeTimes; 
				var arr:Array = getCostData(grade,tempTimes).price.split("=");
				myVo.consItemId = arr[0];
				myVo.consume = arr[1];
				otherVo.clear();
				//卡和时间
				if( unitCardObj.hasOwnProperty("time") )
					this.time = unitCardObj.time;
				if( unitCardObj.hasOwnProperty("units") )
					this.currCardList = unitCardObj.units;
				if( unitCardObj.hasOwnProperty("buff") )
					this.currCardBuffId = unitCardObj.buff;
				if( unitCardObj.hasOwnProperty("state") )
					this.state = unitCardObj.state;
			}
		}
		
		/**
		 * 更新对手消息 
		 * @param value
		 * 
		 */		
		public function updataOpp(value:Object):void
		{
			otherVo.paser(value[1]);
		}
		
		/**
		 * 更新buff购买状态 
		 * @param value
		 * 
		 */		
		public function updataBuff(value:Object):void
		{
			var obj:Object = value[1];
			if( obj.hasOwnProperty("buff") )
			{
				this.buff = obj.buff;
				if( obj.buff.hasOwnProperty("ATK") )
					this.atkBuyCount = obj.buff["ATK"];
				if( obj.buff.hasOwnProperty("SPD") )
					this.defBuyCount = obj.buff["SPD"];
			}
			if( obj.hasOwnProperty("hasBuff") )
			{
				this.hasBuff = obj.hasBuff;
				if(obj.hasBuff.hasOwnProperty("ATK"))
					this.atkAddCount = parseInt((obj.hasBuff["ATK"]*100).toString());
				else
					this.atkAddCount = 0;
				if( obj.hasBuff.hasOwnProperty("SPD") )
					this.defAddCount = parseInt((obj.hasBuff["SPD"]*100).toString());
				else
					this.defAddCount = 0;
			}
		}
		
		public function getRankIcon(imgId:String):String
		{
			return "appRes/icon/rankIcon/"+imgId+".png"
		}
	}
}