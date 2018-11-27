/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class DonateItemUI extends View {
		public var dom_icon:Image;
		public var dom_icon2:Image;
		public var dom_num:Label;
		public var dom_mine:Label;
		public var btn_donate:Button;
		public var dom_guildExp:Label;
		public var dom_guildFund:Label;
		public var dom_personalFund:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/DonateItem");

		}

	}
}