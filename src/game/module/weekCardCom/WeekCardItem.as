package game.module.weekCardCom 
{
	import MornUI.weekCardCom.weekCardItemUI;
	
	import game.global.GameConfigManager;
	import game.global.GameLanguage;
	import game.global.consts.ServiceConst;
	import game.global.vo.User;
	import game.global.vo.WeekCardVo;
	import game.module.bingBook.ItemContainer;
	import game.net.socket.WebSocketNetService;
	
	import laya.events.Event;
	import laya.ui.Box;
	
	/**
	 * ...
	 * @author ...
	 */
	public class WeekCardItem extends Box 
	{
		private var itemWC:weekCardItemUI;
		private var _data:WeekCardVo;
		private var _itemVec:Vector.<ItemContainer> = new Vector.<ItemContainer>();
		
		
		public function WeekCardItem() 
		{
			super();
			init();
		}
		private function init():void
		{
			this.itemWC = new weekCardItemUI();
			this.addChild(itemWC);
			this.view.btnGet.on(Event.CLICK, this, this.clickBtnHandler);
		}
		
		private function clickBtnHandler():void 
		{
			WebSocketNetService.instance.sendData(ServiceConst.CLAIM_WEEK_CARD,[data.dayNum]);
		}
		
		/**@inheritDoc */
		override public function set dataSource(value:*):void {
			
			this._data = value as WeekCardVo;
			
			
			if(!data)
			{
				return;
			}
			
			view.hbox_icons.destroyChildren();
			var totalWidth:int = 0;
			var item = data.item[0];
			// 添加小icon
			var child:ItemContainer = new ItemContainer();
			child.setData(item["id"], item["num"]);
			view.hbox_icons.addChild(child);
			view.lbTitle.text = GameLanguage.getLangByKey("L_A_88432").replace("{0}", data.dayNum);
			switch(data.state)
			{
				case 0:
					view.imgBg.skin = "weekCardCom/bg2.png";
					view.gray = true;
					view.btnGet.visible = true;
					view.btnGet.disabled = true;
					view.lbClaimed.visible = false;
					view.imgHaveGot.visible = false;
					break;
				case 1:
					view.imgBg.skin = "weekCardCom/bg2.png";
					view.gray = false;
					view.btnGet.visible = true;
					view.btnGet.disabled = false;
					view.lbClaimed.visible = false;
					view.imgHaveGot.visible = false;
					break;
				case 2:
					view.imgBg.skin = "weekCardCom/bg2_1.png";
					view.gray = false;
					view.imgHaveGot.visible = true;
					view.btnGet.visible = false;
					view.lbClaimed.visible = true;
					break;
				default:
					break;
			}
			
		}
		
		public function get data():WeekCardVo{
			return this._data;
		}
		
		private function get view():weekCardItemUI{
			return itemWC;
		}
	}

}