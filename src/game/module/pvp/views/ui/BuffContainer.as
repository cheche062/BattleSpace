package game.module.pvp.views.ui
{
	import MornUI.pvpFight.BuffShowContainerUI;
	
	import game.common.XTip;
	import game.common.base.BaseView;
	import game.global.GameLanguage;
	import game.global.data.DBFightEffect;
	import game.module.pvp.event.PvpBuyBuffEvent;
	import game.module.pvp.model.PvpProxy;
	
	import laya.events.Event;
	
	import mvc.Facade;
	
	public class BuffContainer extends BaseView
	{
		private var _ui:BuffShowContainerUI;
		
		private var _model:PvpProxy;
		
		public function BuffContainer()
		{
			super();
		}
		
		override protected function initialize():void
		{
			_ui = new BuffShowContainerUI();
			this.addChild(_ui);
		}
		
		public function setData():void
		{
			if( !_model )
			{
				_model = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
			}
			addEvent();
			
			_ui.cardList.dataSource = _model.currCardList;
			
			var obje:Object = DBFightEffect.getEffectInfo(_model.currCardBuffId);
			var addNum:Number = obje.effect2 * 100;
			_ui.buffWord.text = GameLanguage.getLangByKey(obje.des,addNum);
			
			//主动
			var atkArr:Array = _model.getBuffData("ATK",_model.atkBuyCount).price.split("=");
//			_ui.zTypeImg.skin = GameConfigManager.getItemImgPath(atkArr[0]);
			_ui.zAddBtn.label = atkArr[1];
			_ui.zAddTxt.text = "+" + _model.atkAddCount + "%";
			//被动
			var defArr:Array = _model.getBuffData("SPD",_model.defBuyCount).price.split("=");
//			_ui.bTypeImg.skin = GameConfigManager.getItemImgPath(defArr[0]);
			_ui.bAddBtn.label = defArr[1];
			_ui.bAddTxt.text = "+" + _model.defAddCount + "%";
			
			_ui.zAddBtn.disabled = _ui.bAddBtn.disabled = _model.state == 2;
		}
		
		override public function addEvent():void
		{
			_ui.zAddBtn.on(Event.CLICK,this,atkBuyClick);
			_ui.bAddBtn.on(Event.CLICK,this,spdBuyClick);
		}
		
		override public function removeEvent():void
		{
			_ui.zAddBtn.off(Event.CLICK,this,atkBuyClick);
			_ui.bAddBtn.off(Event.CLICK,this,spdBuyClick);
		}
		
		private function atkBuyClick():void
		{
			var count:int = _model.getBuffTypeTotalCount("ATK");
			if( _model.atkBuyCount >= count )
			{
//				trace("atk购买上限");
				XTip.showTip(GameLanguage.getLangByKey("L_A_88408"));
				return;
			}
			
			Facade.getInstance().sendNotification(PvpBuyBuffEvent.BUYBUFFEVENT,"ATK");
		}
		
		private function spdBuyClick():void
		{
			var count:int = _model.getBuffTypeTotalCount("SPD");
			if( _model.defBuyCount >= count )
			{
//				trace("spd购买上限");
				XTip.showTip(GameLanguage.getLangByKey("L_A_88408"));
				return;
			}
			
			Facade.getInstance().sendNotification(PvpBuyBuffEvent.BUYBUFFEVENT,"SPD");
		}
		
		override public function dispose():void
		{
			super.dispose();
			
			removeEvent();
		}
	}
}