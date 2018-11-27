/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopyTipsViewUI extends View {
		public var CloseBtn:Button;
		public var OkBtn:Button;
		public var LabelText:Text;
		public var ChanelBtn:Button;
		public var TipsText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopyTipsView");

		}

	}
}