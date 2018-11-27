/**Created by the LayaAirIDE,do not modify.*/
package MornUI.trophyRoom {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TrophyRoomViewUI extends View {
		public var btn_close:Button;
		public var btn_help:Button;
		public var dom_content:HBox;
		public var dom_txt_title:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("trophyRoom/TrophyRoomView");

		}

	}
}