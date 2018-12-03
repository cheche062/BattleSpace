package game.module.camp
{
	import MornUI.camp.talent.TalentEWRenderUI;
	
	import game.common.ResourceManager;
	import game.common.base.BaseView;
	import game.global.GameLanguage;
	import game.global.event.Signal;
	import game.module.camp.data.TalentData;
	import game.module.camp.data.UpgradeTalentVO;
	import game.common.XTipManager;
	import game.module.tips.CommTip;
	
	import laya.events.Event;
	
	public class UpgradeTalentView extends BaseView
	{
		public var ui:TalentEWRenderUI;
		
		private var _talentData:TalentData = TalentData.getInstance();
		private var strTip:String;
		
		public function UpgradeTalentView()
		{
			super();
			
			ui = new TalentEWRenderUI();
			ui.on(Event.CLICK,this,onClick);
			this.addChild(ui);
		}
		
		private function onClick(event:Event):void
		{
		    XTipManager.showTip((strTip),CommTip);
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
				this.mouseEnabled = this.mouseThrough = true;
			}
			
			ui.img.skin = "talent/" + vo.excelData.talent_pic + ".png";
			ui.lvTxt.text = vo.excelData.tianfu_level.toString();
			
			var upgradeConfig = ResourceManager.instance.getResByURL("config/tianfu_upgrade.json");
			strTip = upgradeConfig[vo.excelData.id].tianfu_tip;
			var attrNum1 = 0;
			var arr_tianfu_add = upgradeConfig[vo.excelData.id].tianfu_add.split(";");
			attrNum1 = arr_tianfu_add[0].split("=")[1];
			strTip = GameLanguage.getLangByKey("L_A_88417").replace("{0}", attrNum1);
//			for(var i =0;i<arr_tianfu_add.lenght;i++){
//			}
		}
		
		private function clear():void
		{
			ui.img.skin = "";
			ui.lvTxt.text = "";
		}
	}
}