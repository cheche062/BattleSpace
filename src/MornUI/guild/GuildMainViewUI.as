/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildMainViewUI extends View {
		public var dom_bg:Image;
		public var closeBtn:Button;
		public var btn_info:Button;
		public var titleTF:Text;
		public var tabViewContainer:Sprite;
		public var tab_nav:Tab;
		public var rTips:Image;
		public var dom_info:Sprite;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/GuildMainView");

		}

	}
}