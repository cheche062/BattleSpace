package game.module.camp
{
	import MornUI.camp.talent.TalentRenderUI;
	
	import game.common.base.BaseView;
	import game.global.event.Signal;
	import game.module.camp.data.UnitTaletVO;
	
	import laya.events.Event;
	
	public class UnitTalentView extends BaseView
	{
		private var _ui:TalentRenderUI;
		private var _vo:UnitTaletVO;
		
		public function UnitTalentView()
		{
			_ui = new TalentRenderUI();
			this.addChild(_ui);
			
			_ui.addBtn.on(Event.CLICK,onClick);
		}
		
		public function setData(vo:UnitTaletVO):void
		{
			clear();
			
			_vo = vo;
			if( !_vo ) return;
			
			_ui.tfLvTxt.text = "Lv." + vo.lv;
			_ui.talentIcon.skin = "talent/" + vo.excelData.tianfu_pic + ".png";
		}
		
		private function onClick(event:Event):void
		{
			Signal.intance.event("unitTalentAdd",[_vo.excelData.id]);
		}
		
		private function clear():void
		{
			_ui.addBtn.off(Event.CLICK,onClick);
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