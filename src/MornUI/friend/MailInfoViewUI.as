/**Created by the LayaAirIDE,do not modify.*/
package MornUI.friend {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MailInfoViewUI extends View {
		public var ReceiveBtn:Button;
		public var HeadLineText:Text;
		public var ItemList:List;
		public var ReceiveText:Image;
		public var TextPanel:Panel;
		public var dom_MailText_box:Box;
		public var MailText:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("friend/MailInfoView");

		}

	}
}