/**Created by the LayaAirIDE,do not modify.*/
package MornUI.trophyRoom {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TrophyRoomItemUI extends View {
		public var dom_active_box:Box;
		public var dom_txt_title:Label;
		public var btn_buy:Button;
		public var dom_txt_buy:Label;
		public var dom_next:Image;
		public var dom_txt_next:Label;
		public var dom_getinfo_box:Box;
		public var dom_txt_free:Label;
		public var dom_money:Image;
		public var dom_txt_money:Label;
		public var dom_icon_box:Box;
		public var dom_lock_box:Box;
		public var dom_txt_lock:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("trophyRoom/TrophyRoomItem");

		}

	}
}