package game.module.pvp.views
{
	import MornUI.pvpFight.PvpRewardViewUI;
	
	import game.common.AnimationUtil;
	import game.common.base.BaseDialog;
	import game.global.event.Signal;
	import game.module.pvp.model.PvpProxy;
	
	import laya.events.Event;
	
	import mvc.Facade;
	
	public class PvpRewardPanel extends BaseDialog
	{
		private var _model:PvpProxy;
		
		public function PvpRewardPanel()
		{
			super();
			closeOnBlank = true;
		}
		
		override public function close():void{
			AnimationUtil.flowOut(this, this.onClose);
		}
		
		private function onClose():void
		{
			super.close();
		}
		
		public function get view():PvpRewardViewUI{
			if(!_view)
				_view = new PvpRewardViewUI();
			return _view as PvpRewardViewUI;
		}
		
		override public function createUI():void
		{
			super.createUI();
			addChild(view);
		}
		
		
		public override function show(...args):void{
			super.show(args);
			AnimationUtil.flowIn(this);
			
			if( !_model )
			{
				_model = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
			}
			
			showIntegralBack();
		}
		
		public override function addEvent():void{
			super.addEvent();
			view.closeBtn.on(Event.CLICK,this,close);
		}
		
		public override function removeEvent():void{
			super.removeEvent();
			view.closeBtn.off(Event.CLICK,this,close);
		}
		
		public function showIntegralBack():void
		{
			view.itemList.array = _model.getIntegralReward();
		}
		
		public override function destroy(destroyChild:Boolean=true):void{
			_model.isGetIntegral = false;
			_model = null;
			super.destroy(destroyChild);
		}
	}
}