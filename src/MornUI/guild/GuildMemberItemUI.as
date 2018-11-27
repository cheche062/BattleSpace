/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildMemberItemUI extends View {
		public var bg_green:Image;
		public var iconImg:Image;
		public var memberLvTF:Text;
		public var memberNameTF:Text;
		public var memberPlaceTF:Text;
		public var memberDonateTF:Text;
		public var memberWarScoreTF:Text;
		public var memberLastLoginTF:Text;
		public var btn_edit:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildMemberItem");

		}

	}
}