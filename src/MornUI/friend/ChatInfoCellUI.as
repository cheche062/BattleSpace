/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ChatInfoCellUI extends View {
		public var NameText:Text;
		public var chatText:Text;
		public var TimeText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("friend/ChatInfoCell");

		}

	}
}