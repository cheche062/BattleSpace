/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.guild.DonateItemUI;

	public class DonateViewUI extends View {
		public var expBar:ProgressBar;
		public var gNameTF:Text;
		public var gLvTF:Text;
		public var gExpTF:Text;
		public var gIcon:Image;
		public var gMemberTF:Text;
		public var gJoinType:Text;
		public var gClaimLvTF:Text;
		public var dom_icon1:Image;
		public var dom_guild:Label;
		public var dom_icon2:Image;
		public var dom_personal:Label;
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.guild.DonateItemUI",DonateItemUI);
			super.createChildren();
			loadUI("guild/DonateView");

		}

	}
}