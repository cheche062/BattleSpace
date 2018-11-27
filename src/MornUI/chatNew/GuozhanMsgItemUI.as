/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chatNew {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuozhanMsgItemUI extends View {
		public var otBg:Image;
		public var dom_name:Text;
		public var dom_msg:Text;
		public var dom_time:Text;
		public var btn_go:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("chatNew/GuozhanMsgItem");

		}

	}
}