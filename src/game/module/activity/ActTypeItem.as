package game.module.activity 
{
	import MornUI.acitivity.ActivityTypeItemUI;
	
	import game.global.GameConfigManager;
	import game.global.GameLanguage;
	import game.global.event.ActivityEvent;
	import game.global.event.Signal;
	import game.global.vo.activity.ActivityListVo;
	
	import laya.events.Event;
	import laya.net.LocalStorage;
	import laya.ui.Box;
	
	/**
	 * ...
	 * @author ...
	 */
	public class ActTypeItem extends Box 
	{
		
		private var itemMC:ActivityTypeItemUI;
		
		private var actData:ActivityListVo;
		
		public var actID:String = "";
		private var itemIndex:int;	//初始化位置索引
		
		public function ActTypeItem() 
		{
			super();
			init();
		}
		
		private function init():void
		{
			this.itemMC = new ActivityTypeItemUI();
			this.addChild(itemMC);
			
			itemMC.actBtn.on(Event.CLICK, this, this.btnEventHandle);
		}
		
		private function btnEventHandle():void 
		{
			itemMC.tipsImg.visible = false;
			LocalStorage.setItem(actID,1);
			trace("actData:"+JSON.stringify(actData));
			Signal.intance.event(ActivityEvent.SELECT_ACTIVITY, [actID, actData.tid, itemIndex]);
		}
		
		/**@inheritDoc */
		override public function set dataSource(value:*):void
		{
			trace("value:"+JSON.stringify(value));
			if(!value)
			{
				return;
			}
			//trace("GameConfigManager.activiey_list_vec:", GameConfigManager.activiey_list_vec);
			//trace("value:", value);
			itemMC.tipsImg.visible = false;
			if (parseInt(value.status) == 1)
			{
				itemMC.tipsImg.visible = true;
			}
			trace("value.tid:"+value.tid);
		
			actData = GameConfigManager.activiey_list_vec[value.tid];
			trace("actData111:"+actData);
			if (!actData)
			{
				itemMC.actName.text = "noExcelData";
				actData = {};
				if (value.tid == 21) {
					itemMC.actName.text = "L_A_30529";
				}
				if (value.tid == 22) {
					itemMC.actName.text = "L_A_30602";
				}
				if (value.tid == 23) {
					itemMC.actName.text = "L_A_56087";
				}
			}
			else
			{
				itemMC.actName.text = GameLanguage.getLangByKey(actData.name);
			}
			actID = value.id;
			itemIndex = value.itemIndex;
			
			if (!LocalStorage.getItem(actID))
			{
				itemMC.tipsImg.visible = true;
			}
			
		}
		
		private function get view():ActivityTypeItemUI{
			return itemMC;
		}
		
		/**
		 * 设置选中状态
		 */
		override public function set selected(value: Boolean):void{
			if(this.selected !== value){
				super.selected = value;
				itemMC.actBtn.selected = value;
			}
		}
		
	}

}