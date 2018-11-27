/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.guild.logoItemUI;

	public class GuildSetLogoViewUI extends View {
		public var btn_close:Button;
		public var btn_confirm:Button;
		public var btn_cancel:Button;
		public var dom_tab:Tab;
		public var dom_colors:Sprite;
		public var dom_selected_color:Image;
		public var dom_logo:Image;
		public var dom_list:List;

		override protected function createChildren():void {
			View.regComponent("MornUI.guild.logoItemUI",logoItemUI);
			super.createChildren();
			loadUI("guild/GuildSetLogoView");

		}

	}
}