package game.module.camp
{
	import MornUI.camp.talent.TalentRenderUI;
	
	import game.common.ResourceManager;
	import game.common.XTipManager;
	import game.common.base.BaseView;
	import game.global.GameLanguage;
	import game.global.event.Signal;
	import game.module.camp.data.UnitTaletVO;
	import game.module.tips.CommTip;
	import game.module.tips.PropertyTip;
	
	import laya.events.Event;
	import laya.ui.View;
	
	public class UnitTalentView extends BaseView
	{
		private var _ui:TalentRenderUI;
		private var _vo:UnitTaletVO;
		private var infoTip;
		
		public function UnitTalentView()
		{
			_ui = new TalentRenderUI();
			this.addChild(_ui);
			
			_ui.addBtn.on(Event.CLICK,this,onClick);
			_ui.btnTip.on(Event.CLICK,this,onClickTip);
		}
		
		public function setData(vo:UnitTaletVO,isGray:Boolean):void
		{
			clear();
			
			_vo = vo;
			if( !_vo ) return;
			_ui.gray = isGray;
			if(vo.isCanUp && !isGray){
				_ui.addBtn.disabled = false;
			}else{
				_ui.addBtn.disabled = _ui.gray = true;
			}
			_ui.btnTip.disabled = false;
			_ui.tfLvTxt.text = "Lv." + vo.lv;
			_ui.talentIcon.skin = "talent/" + vo.excelData.tianfu_pic + ".png";
			
			var talentConfig = ResourceManager.instance.getResByURL("config/tianfu_detail.json");
			infoTip = {};
			infoTip.name = GameLanguage.getLangByKey(talentConfig[vo.excelData.id].tianfu_name);
			infoTip.des = GameLanguage.getLangByKey(talentConfig[vo.excelData.id].tianfu_dis);
			infoTip.icon = talentConfig[vo.excelData.id].tianfu_pic;	
		}
		
		private function onClickTip(event:Event):void
		{
			XTipManager.showTip( infoTip,PropertyTip);
		}
		
		private function onClick(event:Event):void
		{
			Signal.intance.event("unitTalentAdd",[_vo.excelData.id]);
		}
		
		private function clear():void
		{
			_ui.tfLvTxt.text = _ui.talentIcon.skin = "";
		}
		
		override public function dispose():void
		{
			clear();
			_ui = null;
			super.dispose();
		}
	}
}