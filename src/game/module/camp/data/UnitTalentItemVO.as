package game.module.camp.data
{
	public class UnitTalentItemVO
	{
		public var isAble:Boolean = true;
		
		public var needLv:int = 0;
		
		public var skills:Array;
		
		public function UnitTalentItemVO(value:Array)
		{
			skills = new Array();
			for (var i:int = 0; i < value.length; i++) 
			{
				var vo:UnitTaletVO = new UnitTaletVO();
				vo.excelData = value[i];
				skills.push(vo);
			}
			skills.sort();
		}
		
		/**
		 * 更新单个天赋技能等级 
		 * @param id
		 * @param lv
		 * 
		 */		
		public function updata(id:int,lv:int):void
		{
			if( !skills ) return;
			for (var i:int = 0; i < skills.length; i++) 
			{
				var vo:UnitTaletVO = skills[i];
				vo.lv = lv;
			}
		}
	}
}