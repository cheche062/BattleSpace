package game.module.format
{
	import MornUI.format.FormatViewUI;
	
	import game.common.AnimationUtil;
	import game.common.XTip;
	import game.common.base.BaseDialog;
	import game.global.GameLanguage;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.net.socket.WebSocketNetService;
	
	import laya.events.Event;
	import laya.ui.Box;
	import laya.ui.Button;
	import laya.ui.Image;
	import laya.ui.Label;
	import laya.ui.ProgressBar;
	import laya.utils.Handler;
	
	public class FormatView extends BaseDialog
	{
		public function FormatView()
		{
			super();
		}
		override public function createUI():void
		{
			this.addChild(view);
			this.closeOnBlank = true;
			
			this.view.listAttr.renderHandler = new Handler(this, onRender);
			this.view.listAttr.mouseHandler = new Handler(this, onMouse);
			this.view.listAttr.array = [];
			this.view.listAttr.hScrollBarSkin = '';
		}
		
		private function onRender(cell:Box, index:int):void {
			if(index > this.view.listAttr.array.length)return;
			//获取当前渲染条目的数据
			var data:Object= this.view.listAttr.array[index];
			//根据子节点的名字listNumber，获取子节点对象。         
			var lb_lv:Label=cell.getChildByName("lv") as Label;
			var img_icon:Image=cell.getChildByName("icon") as Image;
			var proBar:ProgressBar=cell.getChildByName("pro") as ProgressBar;
			var lb_itemNum:Label=cell.getChildByName("boxCost").getChildByName("itemNum") as Label;
			var img_itemIcon:Image=cell.getChildByName("boxCost").getChildByName("itemIcon") as Image;
		}
		
		private function onMouse(e:Event,index:Number):void {
			//鼠标单击事件触发
			if(e.type == Event.CLICK)
			{
				//判断点击事件类型,如果点中的是Button组件执行
				if((e.target) instanceof Button)
				{

				}
			}
		}
		
		override public function show(...args):void
		{
			// TODO Auto Generated method stub
			super.show(args);
		}
		
		private function onClick(event:Event):void
		{
			switch(event.target){
				case view.btnUp:
					break;
				case view.btnInfo:
					break;
			}
		}
		
		/**
		 * 请求回来的数据处理 
		 * @param args 数据
		 * 
		 */
		private function onResult(...args):void{
			switch(args[0])
			{
				case ServiceConst.GET_WEBPAY_URL:
					break;
			}
		}
		
		override public function addEvent():void
		{
			// TODO Auto Generated method stub
			view.btnClose.on(Event.CLICK,onClose);
			view.on(Event.CLICK, this, this.onClick);
			
			this.on(Event.ADDED, this, addToStageEvent);
			this.on(Event.REMOVED, this, removeFromStageEvent);
			
			super.addEvent();
		}
		
		override public function removeEvent():void
		{
			// TODO Auto Generated method stub
			view.btnClose.off(Event.CLICK,onClose);
			view.off(Event.CLICK, this, this.onClick);
			
			this.off(Event.ADDED, this, addToStageEvent);
			this.off(Event.REMOVED, this, removeFromStageEvent);
			
			super.removeEvent();
		}
		
		private function addToStageEvent():void 
		{
			WebSocketNetService.instance.sendData(ServiceConst.OPEN_WEEK_CARD);
			
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.OPEN_WEEK_CARD), this, onResult);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.ERROR), this, onError);
		}
		
		private function removeFromStageEvent():void
		{
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.OPEN_WEEK_CARD), this, onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.ERROR), this, onError);
		}
		
		private function onError(...args):void{
			var cmd:Number = args[1];
			var errStr:String = args[2];
			XTip.showTip(GameLanguage.getLangByKey(errStr));
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
		
		public function get view():FormatViewUI{
			_view = _view || new FormatViewUI();
			return _view;
		}
		
	}
}