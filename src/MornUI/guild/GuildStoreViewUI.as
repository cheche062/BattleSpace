/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.guild.StoreItemUI;

	public class GuildStoreViewUI extends View {
		public var dom_list:List;
		public var btn_all:Button;
		public var dom_icon:Image;
		public var dom_userNum:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.guild.StoreItemUI",StoreItemUI);
			super.createChildren();
			loadUI("guild/GuildStoreView");

		}

	}
}