/**Created by the LayaAirIDE,do not modify.*/
package MornUI.mineFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MineInfoViewUI extends View {
		public var closeBtn:Button;
		public var alBtn:Button;
		public var titleTF:Text;
		public var nameTF:Text;
		public var LvTF:Text;
		public var PowerTF:Text;
		public var guildTF:Text;
		public var outPutTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("mineFight/MineInfoView");

		}

	}
}