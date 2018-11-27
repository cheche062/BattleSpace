package game.module.camp
{
	import MornUI.camp.talent.TalentEWRenderUI;
	
	import game.common.base.BaseView;
	import game.module.camp.data.TalentData;
	import game.module.camp.data.UpgradeTalentVO;
	
	public class UpgradeTalentView extends BaseView
	{
		public var ui:TalentEWRenderUI;
		
		private var _talentData:TalentData = TalentData.getInstance();
		
		public function UpgradeTalentView()
		{
			super();
			
			ui = new TalentEWRenderUI();
			this.addChild(ui);
		}
		
		public function setData(vo:UpgradeTalentVO):void
		{
			clear();
			
			if( !vo ) return;
			
			if( _talentData.level >= vo.excelData.tianfu_level )
			{
				this.gray = false;
				this.mouseEnabled = this.mouseThrough = true;
			}
			else
			{
				this.gray = true;
				this.mouseEnabled = this.mouseThrough = false;
			}
			
			ui.img.skin = "talent/" + vo.excelData.talent_pic + ".png";
			ui.lvTxt.text = vo.excelData.tianfu_level.toString();
		}
		
		private function clear():void
		{
			ui.img.skin = "";
			ui.lvTxt.text = "";
		}
	}
}