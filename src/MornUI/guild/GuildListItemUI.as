/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildListItemUI extends View {
		public var applyBtn:Button;
		public var stateTF:Text;
		public var gName:Text;
		public var gLv:Text;
		public var gType:Text;
		public var gMemeber:Text;
		public var gJoin:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildListItem");

		}

	}
}