package game.module.worldBoss
{
	import MornUI.worldBoss.BossRewardTipUI;
	
	import game.common.AnimationUtil;
	import game.common.ResourceManager;
	import game.common.ToolFunc;
	import game.common.base.BaseDialog;
	
	import laya.events.Event;

	
	public class BossRewardTipView extends BaseDialog
	{
		public function BossRewardTipView()
		{
			super();
		}
		override public function createUI():void
		{
			this.addChild(view);
			this.closeOnBlank = true;
		}

		
		override public function show(...args):void
		{
			// TODO Auto Generated method stub
			super.show(args);
			// 获取配置表数据
			var data = ResourceManager.instance.getResByURL("config/p_boss/p_boss_changci.json");
			var currData = data[1]['reward'];
//			currData = "1=1;1=1;1=1";
			
			view.box_BoxList.destroyChildren();
			var rewardNum = 0;
			ToolFunc.createRewardsDoms(currData).forEach(function(item) {
				var w = rewardNum%3;
				var h = Math.floor(rewardNum/3);
				item.x=item.width*w;
				item.y=item.height*h;
				view.box_BoxList.addChild(item);
				rewardNum++;
				//				view.box_BoxList.height
			});
			view.box_BoxList.x=(view.width-view.box_BoxList.width)/2;
			view.box_BoxList.y=100;
		}
		
		private function onClick(event:Event):void
		{
			switch(event.target){
				case view.itemBuyBtn:
					onClose();
					break;
			}
		}
		
		/**
		 * 请求回来的数据处理 
		 * @param args 数据
		 * 
		 */
		private function onResult(...args):void{
//			switch(args[0])
//			{
//				case ServiceConst.GET_WEBPAY_URL:
//					break;
//			}
		}
		
		override public function addEvent():void
		{
			// TODO Auto Generated method stub
			view.closeBtn.on(Event.CLICK,this,onClose);
			view.on(Event.CLICK, this, this.onClick);
			
			this.on(Event.ADDED, this, addToStageEvent);
			this.on(Event.REMOVED, this, removeFromStageEvent);
			
			super.addEvent();
		}
		
		override public function removeEvent():void
		{
			// TODO Auto Generated method stub
			view.closeBtn.off(Event.CLICK,this,onClose);
			view.off(Event.CLICK, this, this.onClick);
			
			this.off(Event.ADDED, this, addToStageEvent);
			this.off(Event.REMOVED, this, removeFromStageEvent);
			
			super.removeEvent();
		}
		
		private function addToStageEvent():void 
		{
//			WebSocketNetService.instance.sendData(ServiceConst.OPEN_WEEK_CARD);
//			
//			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.OPEN_WEEK_CARD), this, onResult);
//			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.ERROR), this, onError);
		}
		
		private function removeFromStageEvent():void
		{
//			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.OPEN_WEEK_CARD), this, onResult);
//			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.ERROR), this, onError);
		}
		
		private function onError(...args):void{
//			var cmd:Number = args[1];
//			var errStr:String = args[2];
//			XTip.showTip(GameLanguage.getLangByKey(errStr));
		}
		
		override public function close():void
		{
			// TODO Auto Generated method stub
			
			AnimationUtil.flowOut(this, onClose);
		}
		
		private function onClose():void
		{
			// TODO Auto Generated method stub
			super.close();
		}
		
		
		override public function dispose():void
		{
			// TODO Auto Generated method stub
			super.dispose();
		}
		
		public function get view():BossRewardTipUI{
			_view = _view || new BossRewardTipUI();
			return _view;
		}
		
	}
}