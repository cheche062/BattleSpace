/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.worldBoss.BossItemUI;
	import MornUI.worldBoss.armyTeamUI;

	public class WorldBossFightViewUI extends View {
		public var ani1:FrameAnimation;
		public var dom_top:Box;
		public var dom_bossList:List;
		public var dom_endTime:Label;
		public var dom_bottom:Box;
		public var dom_right:Box;
		public var btn_addAction:Button;
		public var btn_retreat:Button;
		public var btn_auto:Button;
		public var apLabel:Label;
		public var dom_foodless_box:Box;
		public var btn_foodless:Button;
		public var dom_preset_box:Box;
		public var dom_teamList:List;
		public var dom_buff_box:HBox;
		public var dom_mask_box:Box;
		public var dom_mask:Label;
		public var dom_countdown:Box;
		public var dom_time:Label;
		public var dom_tips:Box;
		public var btn_preset:Button;
		public var dom_foodcost:Label;
		public var dom_topbtns:Box;
		public var btn_help:Button;
		public var btn_close:Button;
		public var btn_kill:Button;
		public var dom_killNum:Label;
		public var btn_setfood:Button;
		public var dom_food:Label;
		public var dom_left:Box;
		public var btn_rank:Button;
		public var btn_mission:Button;
		public var img_rt_mission:Image;
		public var dom_boss_time:Box;
		public var img_red_bg:Image;
		public var img_boss_time:Image;
		public var lb_boss_time:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.worldBoss.BossItemUI",BossItemUI);
			View.regComponent("MornUI.worldBoss.armyTeamUI",armyTeamUI);
			super.createChildren();
			loadUI("worldBoss/WorldBossFightView");

		}

	}
}