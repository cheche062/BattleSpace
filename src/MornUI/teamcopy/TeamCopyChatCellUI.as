/**Created by the LayaAirIDE,do not modify.*/
package MornUI.teamcopy {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TeamCopyChatCellUI extends View {
		public var NameText:Text;
		public var InfoText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("teamcopy/TeamCopyChatCell");

		}

	}
}