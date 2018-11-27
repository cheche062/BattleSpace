package game.module.camp.data
{
	import game.common.ResourceManager;

	public class TalentData
	{
		private static var _inst:TalentData;
		
		/**	天赋点 */		
		public var point:int;
		/**	天赋等级 */		
		public var level:int;
		/**	消耗itemid */		
		public var itemId:int;
		/**	洗炼消耗 */		
		public var xlxh:int;
		
		public static function getInstance():TalentData
		{
			if( !_inst )
			{
				_inst = new TalentData();
			}
			return _inst;
		}
		
		public var talentSkills:Array;
		
		public var talentList:Array;
		
		public function TalentData()
		{
			talentSkills = new Array();
			
			var temp:Array = new Array();
			for(var i:String in talentConfig) 
			{
				var obj:Object = talentConfig[i];
				if( !temp[obj.tianfu_ceng] )
				{
					temp[obj.tianfu_ceng] = new Array();
				}
				temp[obj.tianfu_ceng].push(obj);
			}
			
			for(var j:String in temp) 
			{
				var arr:Array = temp[j];
				var vo:UnitTalentItemVO = new UnitTalentItemVO(arr);
				var pObj:Object = getParamData(j);
				vo.needLv = pObj.value;
				talentSkills.push(vo);
			}
			
			var itemArr:Array = getParamData(4).value.split("=");
			itemId = itemArr[0];
			xlxh = itemArr[1];
			updataUnitSkillAble();
			
			talentList = new Array();
			for(var k:String in upgradeConfig) 
			{
				var uVo:UpgradeTalentVO = new UpgradeTalentVO();
				uVo.excelData = upgradeConfig[k];
				talentList.push(uVo);
			}
		}
		
		public function updata(obje:Object):void
		{
			if( !obje ) return;
			
			if( obje.hasOwnProperty("point") )
			{
				this.point = obje.point;
			}
			
			if( obje.hasOwnProperty("level") )
			{
				this.level = obje.level;
			}
			
			updataUnitSkillAble();
			
			for (var i:int = 0; i < obje.skills.length; i++) 
			{
				var object_:Object = obje.skills[i];
				updataUnitSkill(object_);
			}
			
		}
		
		private function updataUnitSkill(obj:Object):void
		{
			for (var i:int = 0; i < talentSkills.length; i++) 
			{
				var vo:UnitTalentItemVO = talentSkills[i];
				for (var j:int = 0; j < vo.skills.length; j++) 
				{
					var unitTaletVO:UnitTaletVO = vo.skills[j];
					if( unitTaletVO.excelData.id == obj.id )
					{
						unitTaletVO.lv = obj.level;
					}
				}
			}
		}
		
		private function updataUnitSkillAble():void
		{
			for (var i:int = 0; i < talentSkills.length; i++) 
			{
				var vo:UnitTalentItemVO = talentSkills[i];
				if( i != 0 )
				{
					if( level >= vo.needLv )
					{
						vo.isAble = true;
					}
					else
					{
						vo.isAble = false;
					}
				}
			}
		}
		
		/**
		 * 获取某个天赋技能 
		 * @param skillId
		 * @return 
		 * 
		 */		
		private function getTalentVo(skillId:int):UnitTaletVO
		{
			return talentSkills[skillId];
		}
		
		// -------------------   静态表数据   --------------------
		private var _paramConfig:Object;
		private function get paramConfig():Object
		{
			if(!_paramConfig){
				_paramConfig = ResourceManager.instance.getResByURL("config/tianfu_param.json");
			}
			return _paramConfig;
		}
		
		private function getParamData(id:*):Object
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
		
		private var _talentConfig:Object;
		private function get talentConfig():Object
		{
			if(!_talentConfig)
			{
				_talentConfig = ResourceManager.instance.getResByURL("config/tianfu_detail.json");
			}
			return _talentConfig;
		}
		
		private var _upgradeConfig:Object;
		private function get upgradeConfig():Object
		{
			if(!_upgradeConfig)
			{
				_upgradeConfig = ResourceManager.instance.getResByURL("config/tianfu_upgrade.json");
			}
			
			return _upgradeConfig;
		}
	}
}