/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bagua {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.bagua.baguaNpcUI;

	public class baguaViewUI extends View {
		public var btn_close:Button;
		public var btn_info:Button;
		public var btn_refresh:Button;
		public var label_refresh:Label;
		public var btn_battle:Button;
		public var dom_buff:Label;
		public var dom_round:Image;
		public var btn_reset:Button;
		public var label_reset:Label;
		public var btn_getreward:Button;
		public var label_reward:Label;
		public var dom_light_box:Box;
		public var dom_npc_box:List;
		public var dom_buff_box:HBox;
		public var dom_rewards_box:HBox;

		override protected function createChildren():void {
			View.regComponent("MornUI.bagua.baguaNpcUI",baguaNpcUI);
			super.createChildren();
			loadUI("bagua/baguaView");

		}

	}
}