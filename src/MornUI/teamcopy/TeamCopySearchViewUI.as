/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopySearchViewUI extends View {
		public var ReturnBtn:Button;
		public var CloseBtn:Button;
		public var TitleText:Label;
		public var ChanelBtn:Button;
		public var TimeText:Text;
		public var Loading:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopySearchView");

		}

	}
}